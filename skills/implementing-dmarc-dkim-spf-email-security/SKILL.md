---
name: implementing-dmarc-dkim-spf-email-security
description: Configures SPF, DKIM, and DMARC to authenticate outbound email and prevent domain spoofing.
domain: cybersecurity
subdomain: email-security
version: '1.0'
---
# Email Security: SPF, DKIM, DMARC

## Overview
Configuring email authentication protocols is essential to prevent domain impersonation for phishing.

## Workflow
1. **SPF**: Publish DNS records listing authorized sending IPs.
2. **DKIM**: Add digital signatures to outbound emails.
3. **DMARC**: Enforce policy (none -> quarantine -> reject).

## Security Rules
- Always progress toward p=reject.
- Monitor DMARC reports for unauthorized senders.
- Regularly audit SPF authorized sources.
