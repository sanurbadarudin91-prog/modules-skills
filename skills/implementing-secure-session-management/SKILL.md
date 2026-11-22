---
name: implementing-secure-session-management
description: Secure session management practices to prevent hijacking and fixation.
domain: cybersecurity
subdomain: auth-security
version: '1.0'
---
# Secure Session Management

## Overview
Robust session handling prevents unauthorized access via token/session hijacking.

## Workflow
1. **Generate**: Use secure, cryptographically random identifiers.
2. **Configure**: Set , , and  flags.
3. **Lifecycle**: Enforce timeouts (idle/absolute) and regenerate ID upon authentication.

## Security Rules
- Sessions MUST expire on logout/inactivity.
- Ensure session tokens are invalidated after password changes.
- Never include session IDs in URLs.
