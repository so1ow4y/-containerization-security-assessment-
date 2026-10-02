# Top 10 Critical Vulnerabilities - Trivy Scanner

*Generated on Sun Sep  7 07:15:13 PM UTC 2025*

## bwapp

### Top 10 Critical Vulnerabilities

### CVE-2023-45853 - CRITICAL (CVSS: 9.8)
**Package:** zlib1g 1:1.2.11.dfsg-2+deb11u2
**Fixed in:** None
**Title:** zlib: integer overflow and resultant heap-based buffer overflow in zipOpenNewFileInZip4_6
**Description:** MiniZip in zlib through 1.3 has an integer overflow and resultant heap-based buffer overflow in zipOpenNewFileInZip4_64 via a long filename, comment, or extra field. NOTE: MiniZip is not a supported part of the zlib product. NOTE: pyminizip through 0.2.6 is also vulnerable because it bundles an affected zlib version, and exposes the applicable MiniZip code through its compress API.
**Details:** https://avd.aquasec.com/nvd/cve-2023-45853

---

### CVE-2023-25775 - CRITICAL (CVSS: 9.8)
**Package:** linux-libc-dev 5.10.149-2
**Fixed in:** 5.10.205-2
**Title:** kernel: irdma: Improper access control
**Description:** Improper access control in the Intel(R) Ethernet Controller RDMA driver for linux before version 1.9.30 may allow an unauthenticated user to potentially enable escalation of privilege via network access.
**Details:** https://avd.aquasec.com/nvd/cve-2023-25775

---

### CVE-2025-6965 - CRITICAL (CVSS: 9.8)
**Package:** libsqlite3-0 3.34.1-3
**Fixed in:** None
**Title:** sqlite: Integer Truncation in SQLite
**Description:** There exists a vulnerability in SQLite versions before 3.50.2 where the number of aggregate terms could exceed the number of columns available. This could lead to a memory corruption issue. We recommend upgrading to version 3.50.2 or above.
**Details:** https://avd.aquasec.com/nvd/cve-2025-6965

---

### CVE-2024-45492 - CRITICAL (CVSS: 9.8)
**Package:** libexpat1 2.2.10-2+deb11u5
**Fixed in:** 2.2.10-2+deb11u6
**Title:** libexpat: integer overflow
**Description:** An issue was discovered in libexpat before 2.6.3. nextScaffoldPart in xmlparse.c can have an integer overflow for m_groupSize on 32-bit platforms (where UINT_MAX equals SIZE_MAX).
**Details:** https://avd.aquasec.com/nvd/cve-2024-45492

---

### CVE-2024-45491 - CRITICAL (CVSS: 9.8)
**Package:** libexpat1 2.2.10-2+deb11u5
**Fixed in:** 2.2.10-2+deb11u6
**Title:** libexpat: Integer Overflow or Wraparound
**Description:** An issue was discovered in libexpat before 2.6.3. dtdCopy in xmlparse.c can have an integer overflow for nDefaultAtts on 32-bit platforms (where UINT_MAX equals SIZE_MAX).
**Details:** https://avd.aquasec.com/nvd/cve-2024-45491

---

### CVE-2019-8457 - CRITICAL (CVSS: 9.8)
**Package:** libdb5.3 5.3.28+dfsg1-0.8
**Fixed in:** None
**Title:** sqlite: heap out-of-bound read in function rtreenode()
**Description:** SQLite3 from 3.6.0 to and including 3.27.2 is vulnerable to heap out-of-bound read in the rtreenode() function when handling invalid rtree tables.
**Details:** https://avd.aquasec.com/nvd/cve-2019-8457

---

### CVE-2023-38545 - CRITICAL (CVSS: 9.8)
**Package:** libcurl4 7.74.0-1.3+deb11u3
**Fixed in:** 7.74.0-1.3+deb11u10
**Title:** curl: heap based buffer overflow in the SOCKS5 proxy handshake
**Description:** This flaw makes curl overflow a heap based buffer in the SOCKS5 proxy
handshake.

When curl is asked to pass along the host name to the SOCKS5 proxy to allow
that to resolve the address instead of it getting done by curl itself, the
maximum length that host name can be is 255 bytes.

If the host name is detected to be longer, curl switches to local name
resolving and instead passes on the resolved address only. Due to this bug,
the local variable that means "let the host resolve the name" could get the
wrong value during a slow SOCKS5 handshake, and contrary to the intention,
copy the too long host name to the target buffer instead of copying just the
resolved address there.

The target buffer being a heap based buffer, and the host name coming from the
URL that curl has been told to operate with.
**Details:** https://avd.aquasec.com/nvd/cve-2023-38545

---

### CVE-2022-32221 - CRITICAL (CVSS: 9.8)
**Package:** libcurl4 7.74.0-1.3+deb11u3
**Fixed in:** 7.74.0-1.3+deb11u5
**Title:** curl: POST following PUT confusion
**Description:** When doing HTTP(S) transfers, libcurl might erroneously use the read callback (`CURLOPT_READFUNCTION`) to ask for data to send, even when the `CURLOPT_POSTFIELDS` option has been set, if the same handle previously was used to issue a `PUT` request which used that callback. This flaw may surprise the application and cause it to misbehave and either send off the wrong data or use memory after free or similar in the subsequent `POST` request. The problem exists in the logic for a reused handle when it is changed from a PUT to a POST.
**Details:** https://avd.aquasec.com/nvd/cve-2022-32221

---

### CVE-2022-24963 - CRITICAL (CVSS: 9.8)
**Package:** libapr1 1.7.0-6+deb11u1
**Fixed in:** 1.7.0-6+deb11u2
**Title:** apr: integer overflow/wraparound in apr_encode
**Description:** Integer Overflow or Wraparound vulnerability in apr_encode functions of Apache Portable Runtime (APR) allows an attacker to write beyond bounds of a buffer.
This issue affects Apache Portable Runtime (APR) version 1.7.0.
**Details:** https://avd.aquasec.com/nvd/cve-2022-24963

---

### CVE-2023-38545 - CRITICAL (CVSS: 9.8)
**Package:** curl 7.74.0-1.3+deb11u3
**Fixed in:** 7.74.0-1.3+deb11u10
**Title:** curl: heap based buffer overflow in the SOCKS5 proxy handshake
**Description:** This flaw makes curl overflow a heap based buffer in the SOCKS5 proxy
handshake.

When curl is asked to pass along the host name to the SOCKS5 proxy to allow
that to resolve the address instead of it getting done by curl itself, the
maximum length that host name can be is 255 bytes.

If the host name is detected to be longer, curl switches to local name
resolving and instead passes on the resolved address only. Due to this bug,
the local variable that means "let the host resolve the name" could get the
wrong value during a slow SOCKS5 handshake, and contrary to the intention,
copy the too long host name to the target buffer instead of copying just the
resolved address there.

The target buffer being a heap based buffer, and the host name coming from the
URL that curl has been told to operate with.
**Details:** https://avd.aquasec.com/nvd/cve-2023-38545

---

## juice-shop

### Top 10 Critical Vulnerabilities

### CVE-2023-37903 - CRITICAL (CVSS: 10)
**Package:** vm2 3.9.17
**Fixed in:** None
**Title:** vm2: custom inspect function allows attackers to escape the sandbox and run arbitrary code
**Description:** vm2 is an open source vm/sandbox for Node.js. In vm2 for versions up to and including 3.9.19, Node.js custom inspect function allows attackers to escape the sandbox and run arbitrary code. This may result in Remote Code Execution, assuming the attacker has arbitrary code execution primitive inside the context of vm2 sandbox. There are no patches and no known workarounds. Users are advised to find an alternative software.
**Details:** https://avd.aquasec.com/nvd/cve-2023-37903

---

### CVE-2023-37466 - CRITICAL (CVSS: 10)
**Package:** vm2 3.9.17
**Fixed in:** None
**Title:** vm2: Promise handler sanitization can be bypassed allowing attackers to escape the sandbox and run arbitrary code
**Description:** vm2 is an advanced vm/sandbox for Node.js. The library contains critical security issues and should not be used for production. The maintenance of the project has been discontinued. In vm2 for versions up to 3.9.19, `Promise` handler sanitization can be bypassed with the `@@species` accessor property allowing attackers to escape the sandbox and run arbitrary code, potentially allowing remote code execution inside the context of vm2 sandbox.
**Details:** https://avd.aquasec.com/nvd/cve-2023-37466

---

### CVE-2023-32314 - CRITICAL (CVSS: 10)
**Package:** vm2 3.9.17
**Fixed in:** 3.9.18
**Title:** vm2: Sandbox Escape
**Description:** vm2 is a sandbox that can run untrusted code with Node's built-in modules. A sandbox escape vulnerability exists in vm2 for versions up to and including 3.9.17. It abuses an unexpected creation of a host object based on the specification of `Proxy`. As a result a threat actor can bypass the sandbox protections to gain remote code execution rights on the host running the sandbox. This vulnerability was patched in the release of version `3.9.18` of `vm2`. Users are advised to upgrade. There are no known workarounds for this vulnerability.
**Details:** https://avd.aquasec.com/nvd/cve-2023-32314

---

### CVE-2015-9235 - CRITICAL (CVSS: 9.8)
**Package:** jsonwebtoken 0.4.0
**Fixed in:** 4.2.2
**Title:** nodejs-jsonwebtoken: verification step bypass with an altered token
**Description:** In jsonwebtoken node module before 4.2.2 it is possible for an attacker to bypass verification when a token digitally signed with an asymmetric key (RS/ES family) of algorithms but instead the attacker send a token digitally signed with a symmetric algorithm (HS* family).
**Details:** https://avd.aquasec.com/nvd/cve-2015-9235

---

### CVE-2015-9235 - CRITICAL (CVSS: 9.8)
**Package:** jsonwebtoken 0.1.0
**Fixed in:** 4.2.2
**Title:** nodejs-jsonwebtoken: verification step bypass with an altered token
**Description:** In jsonwebtoken node module before 4.2.2 it is possible for an attacker to bypass verification when a token digitally signed with an asymmetric key (RS/ES family) of algorithms but instead the attacker send a token digitally signed with a symmetric algorithm (HS* family).
**Details:** https://avd.aquasec.com/nvd/cve-2015-9235

---

### CVE-2019-10744 - CRITICAL (CVSS: 9.1)
**Package:** lodash 2.4.2
**Fixed in:** 4.17.12
**Title:** nodejs-lodash: prototype pollution in defaultsDeep function leading to modifying properties
**Description:** Versions of lodash lower than 4.17.12 are vulnerable to Prototype Pollution. The function defaultsDeep could be tricked into adding or modifying properties of Object.prototype using a constructor payload.
**Details:** https://avd.aquasec.com/nvd/cve-2019-10744

---

### CVE-2023-46233 - CRITICAL (CVSS: 9.1)
**Package:** crypto-js 3.3.0
**Fixed in:** 4.2.0
**Title:** crypto-js: PBKDF2 1,000 times weaker than specified in 1993 and 1.3M times weaker than current standard
**Description:** crypto-js is a JavaScript library of crypto standards. Prior to version 4.2.0, crypto-js PBKDF2 is 1,000 times weaker than originally specified in 1993, and at least 1,300,000 times weaker than current industry standard. This is because it both defaults to SHA1, a cryptographic hash algorithm considered insecure since at least 2005, and defaults to one single iteration, a 'strength' or 'difficulty' value specified at 1,000 when specified in 1993. PBKDF2 relies on iteration count as a countermeasure to preimage and collision attacks. If used to protect passwords, the impact is high. If used to generate signatures, the impact is high. Version 4.2.0 contains a patch for this issue. As a workaround, configure crypto-js to use SHA256 with at least 250,000 iterations.
**Details:** https://avd.aquasec.com/nvd/cve-2023-46233

---

### GHSA-5mrr-rgp6-x4gr - CRITICAL (CVSS: 0)
**Package:** marsdb 0.6.11
**Fixed in:** None
**Title:** Command Injection in marsdb
**Description:** All versions of `marsdb` are vulnerable to Command Injection. In the `DocumentMatcher` class, selectors on `$where` clauses are passed to a Function constructor unsanitized. This allows attackers to run arbitrary commands in the system when the function is executed.


## Recommendation

No fix is currently available. Consider using an alternative package until a fix is made available.
**Details:** https://github.com/advisories/GHSA-5mrr-rgp6-x4gr

---

## vulnapp-bhagavan

### Top 10 Critical Vulnerabilities

### CVE-2019-10744 - CRITICAL (CVSS: 9.1)
**Package:** lodash 3.10.1
**Fixed in:** 4.17.12
**Title:** nodejs-lodash: prototype pollution in defaultsDeep function leading to modifying properties
**Description:** Versions of lodash lower than 4.17.12 are vulnerable to Prototype Pollution. The function defaultsDeep could be tricked into adding or modifying properties of Object.prototype using a constructor payload.
**Details:** https://avd.aquasec.com/nvd/cve-2019-10744

---

## vulnapp-demo-poc

### Top 10 Critical Vulnerabilities

