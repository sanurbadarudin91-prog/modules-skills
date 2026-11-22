---
name: implementing-secrets-scanning-in-ci-cd
description: Integrates automated secret scanning (e.g., Gitleaks) into CI/CD pipelines to prevent credential leaks.
domain: cybersecurity
subdomain: secret-hygiene
version: '1.0'
---
# Secrets Scanning in CI/CD

## Overview
Automated scanning prevents plaintext credentials from entering version control.

## Workflow
1. **Tooling**: Deploy Gitleaks or TruffleHog.
2. **Integrate**: Add scan as a step in CI/CD (GitHub Actions/GitLab CI).
3. **Gate**: Fail builds on findings.

## Security Rules
- Scan all commits and history (baseline).
- Use pre-commit hooks.
- Educate teams on remediation vs. key rotation.
