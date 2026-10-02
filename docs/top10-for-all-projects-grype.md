# Top 10 Critical Vulnerabilities - Grype Scanner

*Generated on Sun Sep  7 07:15:13 PM UTC 2025*

## bwapp

### Top 10 Critical Vulnerabilities

### CVE-2025-1861 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** php-cli 7.4.33
**Fixed in:** 8.1.32
**Description:** In PHP from 8.1.* before 8.1.32, from 8.2.* before 8.2.28, from 8.3.* before 8.3.19, from 8.4.* before 8.4.5, when parsing HTTP redirect in the response to an HTTP request, there is currently limit on the location value size caused by limited size of the location buffer to 1024. However as per RFC9110, the limit is recommended to be 8000. This may lead to incorrect URL truncation and redirecting to a wrong location.
**URLs:** https://github.com/php/php-src/security/advisories/GHSA-52jp-hrpf-2jff, https://security.netapp.com/advisory/ntap-20250523-0005/

---

### CVE-2025-1861 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libphp 7.4.33
**Fixed in:** 8.1.32
**Description:** In PHP from 8.1.* before 8.1.32, from 8.2.* before 8.2.28, from 8.3.* before 8.3.19, from 8.4.* before 8.4.5, when parsing HTTP redirect in the response to an HTTP request, there is currently limit on the location value size caused by limited size of the location buffer to 1024. However as per RFC9110, the limit is recommended to be 8000. This may lead to incorrect URL truncation and redirecting to a wrong location.
**URLs:** https://github.com/php/php-src/security/advisories/GHSA-52jp-hrpf-2jff, https://security.netapp.com/advisory/ntap-20250523-0005/

---

### CVE-2025-6965 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libsqlite3-0 3.34.1-3
**Fixed in:** None
**Description:** There exists a vulnerability in SQLite versions before 3.50.2 where the number of aggregate terms could exceed the number of columns available. This could lead to a memory corruption issue. We recommend upgrading to version 3.50.2 or above.
**URLs:** 

---

### CVE-2024-45491 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libexpat1 2.2.10-2+deb11u5
**Fixed in:** 2.2.10-2+deb11u6
**Description:** An issue was discovered in libexpat before 2.6.3. dtdCopy in xmlparse.c can have an integer overflow for nDefaultAtts on 32-bit platforms (where UINT_MAX equals SIZE_MAX).
**URLs:** 

---

### CVE-2022-24963 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libapr1 1.7.0-6+deb11u1
**Fixed in:** 1.7.0-6+deb11u2
**Description:** Integer Overflow or Wraparound vulnerability in apr_encode functions of Apache Portable Runtime (APR) allows an attacker to write beyond bounds of a buffer. This issue affects Apache Portable Runtime (APR) version 1.7.0.
**URLs:** 

---

### CVE-2024-45492 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libexpat1 2.2.10-2+deb11u5
**Fixed in:** 2.2.10-2+deb11u6
**Description:** An issue was discovered in libexpat before 2.6.3. nextScaffoldPart in xmlparse.c can have an integer overflow for m_groupSize on 32-bit platforms (where UINT_MAX equals SIZE_MAX).
**URLs:** 

---

### CVE-2024-8932 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** php-cli 7.4.33
**Fixed in:** 8.1.31
**Description:** In PHP versions 8.1.* before 8.1.31, 8.2.* before 8.2.26, 8.3.* before 8.3.14, uncontrolled long string inputs to ldap_escape() function on 32-bit systems can cause an integer overflow, resulting in an out-of-bounds write.
**URLs:** https://github.com/php/php-src/security/advisories/GHSA-g665-fm4p-vhff, https://security.netapp.com/advisory/ntap-20250110-0009/

---

### CVE-2024-8932 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libphp 7.4.33
**Fixed in:** 8.1.31
**Description:** In PHP versions 8.1.* before 8.1.31, 8.2.* before 8.2.26, 8.3.* before 8.3.14, uncontrolled long string inputs to ldap_escape() function on 32-bit systems can cause an integer overflow, resulting in an out-of-bounds write.
**URLs:** https://github.com/php/php-src/security/advisories/GHSA-g665-fm4p-vhff, https://security.netapp.com/advisory/ntap-20250110-0009/

---

### CVE-2024-38474 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** apache2-utils 2.4.54-1~deb11u1
**Fixed in:** 2.4.61-1~deb11u1
**Description:** Substitution encoding issue in mod_rewrite in Apache HTTP Server 2.4.59 and earlier allows attacker to execute scripts in directories permitted by the configuration but not directly reachable by any URL or source disclosure of scripts meant to only to be executed as CGI.  Users are recommended to upgrade to version 2.4.60, which fixes this issue.  Some RewriteRules that capture and substitute unsafely will now fail unless rewrite flag "UnsafeAllow3F" is specified.
**URLs:** 

---

### CVE-2024-38474 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** apache2-data 2.4.54-1~deb11u1
**Fixed in:** 2.4.61-1~deb11u1
**Description:** Substitution encoding issue in mod_rewrite in Apache HTTP Server 2.4.59 and earlier allows attacker to execute scripts in directories permitted by the configuration but not directly reachable by any URL or source disclosure of scripts meant to only to be executed as CGI.  Users are recommended to upgrade to version 2.4.60, which fixes this issue.  Some RewriteRules that capture and substitute unsafely will now fail unless rewrite flag "UnsafeAllow3F" is specified.
**URLs:** 

---

## juice-shop

### Top 10 Critical Vulnerabilities

### GHSA-cchq-frgv-rjh5 - Critical (CVSS: 9.8, EPSS: 5%)
**Package:** vm2 3.9.17
**Fixed in:** None
**Description:** vm2 Sandbox Escape vulnerability
**URLs:** 

---

### GHSA-g644-9gfx-q4q4 - Critical (CVSS: 9.8, EPSS: 36%)
**Package:** vm2 3.9.17
**Fixed in:** None
**Description:** vm2 Sandbox Escape vulnerability
**URLs:** 

---

### GHSA-whpj-8f3w-67p5 - Critical (CVSS: 9.8, EPSS: 68%)
**Package:** vm2 3.9.17
**Fixed in:** 3.9.18
**Description:** vm2 Sandbox Escape vulnerability
**URLs:** 

---

### GHSA-xwcq-pm8m-c4vf - Critical (CVSS: 9.1, EPSS: 1%)
**Package:** crypto-js 3.3.0
**Fixed in:** 4.2.0
**Description:** crypto-js PBKDF2 1,000 times weaker than specified in 1993 and 1.3M times weaker than current standard
**URLs:** 

---

### GHSA-jf85-cpcp-j695 - Critical (CVSS: 9.1, EPSS: 3%)
**Package:** lodash 2.4.2
**Fixed in:** 4.17.12
**Description:** Prototype Pollution in lodash
**URLs:** 

---

### GHSA-5mrr-rgp6-x4gr - Critical (CVSS: 0, EPSS: 0%)
**Package:** marsdb 0.6.11
**Fixed in:** None
**Description:** Command Injection in marsdb
**URLs:** 

---

### GHSA-c7hr-j4mj-j2w6 - Critical (CVSS: 0, EPSS: 41%)
**Package:** jsonwebtoken 0.4.0
**Fixed in:** 4.2.2
**Description:** Verification Bypass in jsonwebtoken
**URLs:** 

---

### GHSA-c7hr-j4mj-j2w6 - Critical (CVSS: 0, EPSS: 41%)
**Package:** jsonwebtoken 0.1.0
**Fixed in:** 4.2.2
**Description:** Verification Bypass in jsonwebtoken
**URLs:** 

---

## vulnapp-bhagavan

### Top 10 Critical Vulnerabilities

### GHSA-jf85-cpcp-j695 - Critical (CVSS: 9.1, EPSS: 3%)
**Package:** lodash 3.10.1
**Fixed in:** 4.17.12
**Description:** Prototype Pollution in lodash
**URLs:** 

---

## vulnapp-demo-poc

### Top 10 Critical Vulnerabilities

## vulnapp-meera

### Top 10 Critical Vulnerabilities

### CVE-2025-6965 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libsqlite3-0 3.34.1-3
**Fixed in:** None
**Description:** There exists a vulnerability in SQLite versions before 3.50.2 where the number of aggregate terms could exceed the number of columns available. This could lead to a memory corruption issue. We recommend upgrading to version 3.50.2 or above.
**URLs:** 

---

### CVE-2024-45491 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libexpat1 2.2.10-2+deb11u3
**Fixed in:** 2.2.10-2+deb11u6
**Description:** An issue was discovered in libexpat before 2.6.3. dtdCopy in xmlparse.c can have an integer overflow for nDefaultAtts on 32-bit platforms (where UINT_MAX equals SIZE_MAX).
**URLs:** 

---

### CVE-2022-24963 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libapr1 1.7.0-6+deb11u1
**Fixed in:** 1.7.0-6+deb11u2
**Description:** Integer Overflow or Wraparound vulnerability in apr_encode functions of Apache Portable Runtime (APR) allows an attacker to write beyond bounds of a buffer. This issue affects Apache Portable Runtime (APR) version 1.7.0.
**URLs:** 

---

### CVE-2022-3515 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libksba8 1.5.0-3
**Fixed in:** 1.5.0-3+deb11u1
**Description:** A vulnerability was found in the Libksba library due to an integer overflow within the CRL parser. The vulnerability can be exploited remotely for code execution on the target system by passing specially crafted data to the application, for example, a malicious S/MIME attachment.
**URLs:** 

---

### CVE-2022-32207 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libcurl4 7.74.0-1.3+deb11u1
**Fixed in:** 7.74.0-1.3+deb11u2
**Description:** When curl < 7.84.0 saves cookies, alt-svc and hsts data to local files, it makes the operation atomic by finalizing the operation with a rename from a temporary name to the final target file name.In that rename operation, it might accidentally *widen* the permissions for the target file, leaving the updated file accessible to more users than intended.
**URLs:** 

---

### CVE-2022-32207 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** curl 7.74.0-1.3+deb11u1
**Fixed in:** 7.74.0-1.3+deb11u2
**Description:** When curl < 7.84.0 saves cookies, alt-svc and hsts data to local files, it makes the operation atomic by finalizing the operation with a rename from a temporary name to the final target file name.In that rename operation, it might accidentally *widen* the permissions for the target file, leaving the updated file accessible to more users than intended.
**URLs:** 

---

### CVE-2024-45492 - Critical (CVSS: 9.8, EPSS: 0%)
**Package:** libexpat1 2.2.10-2+deb11u3
**Fixed in:** 2.2.10-2+deb11u6
**Description:** An issue was discovered in libexpat before 2.6.3. nextScaffoldPart in xmlparse.c can have an integer overflow for m_groupSize on 32-bit platforms (where UINT_MAX equals SIZE_MAX).
**URLs:** 

---

### CVE-2022-32221 - Critical (CVSS: 9.8, EPSS: 1%)
**Package:** libcurl4 7.74.0-1.3+deb11u1
**Fixed in:** 7.74.0-1.3+deb11u5
**Description:** When doing HTTP(S) transfers, libcurl might erroneously use the read callback (`CURLOPT_READFUNCTION`) to ask for data to send, even when the `CURLOPT_POSTFIELDS` option has been set, if the same handle previously was used to issue a `PUT` request which used that callback. This flaw may surprise the application and cause it to misbehave and either send off the wrong data or use memory after free or similar in the subsequent `POST` request. The problem exists in the logic for a reused handle when it is changed from a PUT to a POST.
**URLs:** 

---

### CVE-2022-32221 - Critical (CVSS: 9.8, EPSS: 1%)
**Package:** libcurl3-gnutls 7.74.0-1.3+deb11u2
**Fixed in:** 7.74.0-1.3+deb11u5
**Description:** When doing HTTP(S) transfers, libcurl might erroneously use the read callback (`CURLOPT_READFUNCTION`) to ask for data to send, even when the `CURLOPT_POSTFIELDS` option has been set, if the same handle previously was used to issue a `PUT` request which used that callback. This flaw may surprise the application and cause it to misbehave and either send off the wrong data or use memory after free or similar in the subsequent `POST` request. The problem exists in the logic for a reused handle when it is changed from a PUT to a POST.
**URLs:** 

---

### CVE-2022-32221 - Critical (CVSS: 9.8, EPSS: 1%)
**Package:** curl 7.74.0-1.3+deb11u1
**Fixed in:** 7.74.0-1.3+deb11u5
**Description:** When doing HTTP(S) transfers, libcurl might erroneously use the read callback (`CURLOPT_READFUNCTION`) to ask for data to send, even when the `CURLOPT_POSTFIELDS` option has been set, if the same handle previously was used to issue a `PUT` request which used that callback. This flaw may surprise the application and cause it to misbehave and either send off the wrong data or use memory after free or similar in the subsequent `POST` request. The problem exists in the logic for a reused handle when it is changed from a PUT to a POST.
**URLs:** 

---

