---
name: secret-hygiene-and-detection
description: Patterns for detecting and preventing secret leakage based on industry standards (Gitleaks, TruffleHog, etc.).
domain: cybersecurity
subdomain: secret-hygiene
version: '1.0'
---
# Secret Hygiene and Detection

## Overview
Automated detection of sensitive credentials (tokens, API keys, certs) in source code and logs is mandatory to prevent unauthorized access.

## Workflow
1. **Identify**: Define sensitive patterns (entropy, regex, known key formats).
2. **Scan**: Implement pre-commit hooks and CI/CD scan stages.
3. **Remediate**: If found, rotate secret, invalidate, and scrub history.

## Security Rules
- NEVER push raw secrets; use environment variables or secret managers (Vault/AWS/GCP/Azure).
- Implement automated scanning at every commit boundary.
- If a secret is leaked, treat it as compromised (mandatory rotation).
- Use Git-ignore/local configuration to keep local keys out of version control.
