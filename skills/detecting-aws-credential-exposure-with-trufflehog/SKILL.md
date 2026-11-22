---
name: detecting-aws-credential-exposure-with-trufflehog
description: Automated scanning of repos for exposed AWS credentials using TruffleHog.
domain: cybersecurity
subdomain: secret-hygiene
version: '1.0'
---
# Detecting AWS Credential Exposure

## Overview
Detects leaked AWS credentials in source code to prevent unauthorized cloud infrastructure access.

## Workflow
1. **Configure**: Install TruffleHog.
2. **Scan**: Run scan on CI/CD pipelines or local repos.
3. **Remediate**: Rotate leaked keys, invalidate sessions.

## Security Rules
- NEVER commit raw secrets to version control.
- Use IAM roles/Service Accounts for authentication.
- Implement automated pre-commit scanning.
