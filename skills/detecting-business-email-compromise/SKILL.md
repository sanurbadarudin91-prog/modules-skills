---
name: detecting-business-email-compromise
description: Identifies BEC by analyzing writing style, behavioral patterns, and contextual anomalies in emails.
domain: cybersecurity
subdomain: incident-response
version: '1.0'
---
# Detecting Business Email Compromise (BEC)

## Overview
BEC involves impersonating executives or vendors to manipulate fund transfers. It often lacks malicious links/payloads.

## Workflow
1. **Monitor**: Identify anomalous sender patterns.
2. **Analyze**: Use NLP to flag unusual tone, language, or urgent requests.
3. **Control**: Require dual-approval for financial changes.

## Security Rules
- Use DMARC/SPF/DKIM to prevent spoofing.
- Implement clear policies for wire transfer verification.
- Train users on social engineering indicators.
