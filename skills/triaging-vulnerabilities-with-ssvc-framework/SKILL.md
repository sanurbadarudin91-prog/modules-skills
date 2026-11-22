---
name: triaging-vulnerabilities-with-ssvc-framework
description: Prioritizing vulnerability remediation using the SSVC decision tree.
domain: cybersecurity
subdomain: vulnerability-management
version: '1.0'
---
# Vulnerability Triage with SSVC

## Overview
SSVC prioritizes vulnerability remediation based on real-world exploitability and business impact, rather than CVSS severity alone.

## Workflow
1. **Gather**: Get CVE details (KEV, EPSS).
2. **Assess**: Use SSVC decision tree (Exploit, Impact, etc.).
3. **Decide**: Assign action (Track, Attend, Act).

## Security Rules
- Prioritize based on exploitation status (CISA KEV).
- Contextualize impact to mission prevalence.
- Automate triage where possible.
