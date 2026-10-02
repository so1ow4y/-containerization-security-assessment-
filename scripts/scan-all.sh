#!/bin/bash

# Скрипт для автоматического сканирования Docker образов
# Запуск: sudo ./scripts/scan-all.sh

REPO_DIR=$PWD
PROJECTS_DIR="$REPO_DIR/projects"
REPORTS_DIR="$REPO_DIR/reports"

# Список проектов для сканирования
PROJECTS=("juice-shop" "vulnapp-meera" "vulnapp-bhagavan" "vulnapp-demo-poc" "bwapp")

# Создаем директорию для отчетов если её нет
mkdir -p "$REPORTS_DIR"

echo "=== Начинаем сканирование Docker образов ==="
echo "Отчеты будут сохранены в: $REPORTS_DIR"
echo ""

for PROJECT in "${PROJECTS[@]}"; do
    echo "================================================"
    echo "Обрабатываем проект: $PROJECT"
    echo "================================================"
    
    PROJECT_PATH="$PROJECTS_DIR/$PROJECT"
    
    # Проверяем существование директории проекта
    if [ ! -d "$PROJECT_PATH" ]; then
        echo "Директория проекта $PROJECT не найдена!"
        continue
    fi
    
    # Проверяем наличие Dockerfile
    if [ ! -f "$PROJECT_PATH/Dockerfile" ]; then
        echo "Dockerfile не найден в проекте $PROJECT!"
        continue
    fi
    
    # Переходим в директорию проекта
    cd "$PROJECT_PATH"
    
    # 1. Сборка образа
    echo "Собираем Docker образ..."
    if ! sudo docker build -t "$PROJECT-scan:latest" .; then
        echo "Ошибка сборки образа $PROJECT!"
        continue
    fi
    
    # 2. Сканирование с Trivy
    echo "Сканируем с Trivy..."
    sudo trivy image --format json --output "$REPORTS_DIR/${PROJECT}-trivy.json" "$PROJECT-scan:latest"
    sudo trivy image --format table --output "$REPORTS_DIR/${PROJECT}-trivy.txt" "$PROJECT-scan:latest"
    
    # 3. Сканирование с Grype
    echo "Сканируем с Grype..."
    sudo grype "$PROJECT-scan:latest" --output json > "$REPORTS_DIR/${PROJECT}-grype.json"
    sudo grype "$PROJECT-scan:latest" --output table > "$REPORTS_DIR/${PROJECT}-grype.txt"
    
    # 4. Удаление образа
    echo "Удаляем временный образ..."
    sudo docker rmi "$PROJECT-scan:latest" 2>/dev/null || true
    
    echo "$PROJECT - завершено!"
    echo ""
done

echo "================================================"
echo "Все проекты обработаны!"
echo "Отчеты сохранены в: $REPORTS_DIR"
echo "================================================"

# Возвращаемся в исходную директорию
cd "$REPO_DIR"