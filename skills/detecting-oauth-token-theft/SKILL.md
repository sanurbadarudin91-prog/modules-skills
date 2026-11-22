---
name: detecting-oauth-token-theft
description: Detects OAuth token theft and replay attacks by monitoring sign-in anomalies and session ID correlation.
domain: cybersecurity
subdomain: auth-security
version: '1.0'
---
# Detecting OAuth Token Theft

## Overview
Adversaries abuse stolen OAuth tokens to bypass MFA and impersonate users.

## Workflow
1. **Log**: Analyze Entra ID/Okta sign-in logs.
2. **Detect**: Flag impossible travel, anomalous session IDs, and user-agent mismatches.
3. **Response**: Revoke session, disable account, audit application consents.

## Security Rules
- Implement Token Binding (DPoP/CA).
- Enforce phishing-resistant MFA.
- Regularly review OAuth application consent grants.
