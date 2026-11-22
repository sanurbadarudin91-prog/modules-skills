---
name: implementing-iac-misconfig-check
description: Rules for automated Infrastructure-as-Code security scanning.
domain: cybersecurity
subdomain: iac-security
version: '1.0'
---
# IaC Misconfiguration Check

## Overview
Identifies infrastructure vulnerabilities (S3 public, open ports) in Terraform/K8s/CloudFormation.

## Workflow
1. **Scan**: Run IaC scanners (Checkov/Trivy/KICS) in CI.
2. **Validate**: Fail builds on critical misconfigurations.
3. **Audit**: Maintain clean IaC baselines.

## Security Rules
- NEVER deploy IaC with critical misconfigurations.
- Default to principle of least privilege in IAM/SecurityGroups.
- Rotate IaC templates to enforce newest security defaults.
