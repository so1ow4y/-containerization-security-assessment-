#!/bin/bash

REPORTS_DIR="./reports"
DOCS_DIR="./docs"
TRIVY_TOP10="$DOCS_DIR/top10-for-all-projects-trivy.md"
GRYPE_TOP10="$DOCS_DIR/top10-for-all-projects-grype.md"

# Создаем директории если их нет
mkdir -p "$DOCS_DIR"

# Функция для обработки Trivy JSON
process_trivy() {
    local file="$1"
    local project=$(basename "$file" "-trivy.json")
    
    echo -e "Анализируем Trivy отчет для: $project"
    
    # Извлекаем 10 самых критичных уязвимостей
    jq -c '
    [.Results[] | 
     select(.Vulnerabilities != null) | 
     .Vulnerabilities[] | 
     select(.Severity == "CRITICAL") |
     {VulnerabilityID, PkgName, InstalledVersion, FixedVersion, Severity, Title, Description, PrimaryURL, CVSS: (.CVSS.nvd.V3Score // .CVSS.bitnami.V3Score // 0)}
    ] | 
    sort_by(.CVSS) | reverse | .[0:10]' "$file" > "$REPORTS_DIR/${project}-trivy-critical.json"
}

# Функция для обработки Grype JSON
process_grype() {
    local file="$1"
    local project=$(basename "$file" "-grype.json")
    
    echo -e "Анализируем Grype отчет для: $project"
    
    # Извлекаем 10 самых критичных уязвимостей
    jq -c '
    [.matches[] | 
     select(.vulnerability.severity == "Critical") |
     {
        VulnerabilityID: .vulnerability.id,
        Package: .artifact.name,
        InstalledVersion: .artifact.version,
        FixedVersion: (.vulnerability.fix.versions[0] // "None"),
        Severity: .vulnerability.severity,
        Description: .vulnerability.description,
        CVSS: (.vulnerability.cvss[0].metrics.baseScore // 0),
        EPSS: (.vulnerability.epss[0].epss // 0),
        URLs: (.vulnerability.urls // [])
     }
    ] | 
    sort_by(.CVSS) | reverse | .[0:10]' "$file" > "$REPORTS_DIR/${project}-grype-critical.json"
}

# Создаем итоговые MD файлы
echo -e "# Top 10 Critical Vulnerabilities - Trivy Scanner" > "$TRIVY_TOP10"
echo -e "\n*Generated on $(date)*\n" >> "$TRIVY_TOP10"

echo -e "# Top 10 Critical Vulnerabilities - Grype Scanner" > "$GRYPE_TOP10"
echo -e "\n*Generated on $(date)*\n" >> "$GRYPE_TOP10"

# Обрабатываем все Trivy отчеты
for trivy_file in "$REPORTS_DIR"/*-trivy.json; do
    if [ -f "$trivy_file" ]; then
        process_trivy "$trivy_file"
        
        # Добавляем в итоговый MD
        project=$(basename "$trivy_file" "-trivy.json")
        echo -e "## $project" >> "$TRIVY_TOP10"
        echo -e "\n### Top 10 Critical Vulnerabilities\n" >> "$TRIVY_TOP10"
        
        jq -r '
        .[] | 
        "### \(.VulnerabilityID) - \(.Severity) (CVSS: \(.CVSS))\n" +
        "**Package:** \(.PkgName) \(.InstalledVersion)\n" +
        "**Fixed in:** \(.FixedVersion // "None")\n" +
        "**Title:** \(.Title)\n" +
        "**Description:** \(.Description)\n" +
        "**Details:** \(.PrimaryURL)\n\n---\n"
        ' "$REPORTS_DIR/${project}-trivy-critical.json" >> "$TRIVY_TOP10"
    fi
done

# Обрабатываем все Grype отчеты
for grype_file in "$REPORTS_DIR"/*-grype.json; do
    if [ -f "$grype_file" ]; then
        process_grype "$grype_file"
        
        # Добавляем в итоговый MD
        project=$(basename "$grype_file" "-grype.json")
        echo -e "## $project" >> "$GRYPE_TOP10"
        echo -e "\n### Top 10 Critical Vulnerabilities\n" >> "$GRYPE_TOP10"
        
        jq -r '
        .[] | 
        "### \(.VulnerabilityID) - \(.Severity) (CVSS: \(.CVSS), EPSS: \(.EPSS * 100 | round)%)\n" +
        "**Package:** \(.Package) \(.InstalledVersion)\n" +
        "**Fixed in:** \(.FixedVersion)\n" +
        "**Description:** \(.Description)\n" +
        "**URLs:** \(.URLs | join(", "))\n\n---\n"
        ' "$REPORTS_DIR/${project}-grype-critical.json" >> "$GRYPE_TOP10"
    fi
done

echo -e "Фильтрация завершена!"
echo -e "Отчеты созданы:"
echo -e "   - $TRIVY_TOP10"
echo -e "   - $GRYPE_TOP10"
echo -e "   - Фильтрованные JSON в $REPORTS_DIR/"