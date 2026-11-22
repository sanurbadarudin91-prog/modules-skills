---
name: detecting-email-account-compromise
description: Identifies email account takeover (ATO) by monitoring for impossible travel, inbox rule manipulation, and API abuse.
domain: cybersecurity
subdomain: incident-response
version: '1.0'
---
# Detecting Email Account Compromise

## Overview
Email account compromise (BEC/ATO) often leads to data exfiltration or financial fraud. Early detection via audit logs is critical.

## Workflow
1. **Monitor**: Review Unified Audit Logs (O365) or Google Workspace logs.
2. **Flag**: Detect impossible travel, inbox rule changes (forwarding), and API token abuse.
3. **Contain**: Revoke sessions, disable mailbox access, reset MFA.

## Security Rules
- Enforce phishing-resistant MFA.
- Regularly audit inbox/mail-flow forwarding rules.
- Monitor for anomalous API application grants.
