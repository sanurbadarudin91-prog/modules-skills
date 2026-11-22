---
name: implementing-secure-logging-practices
description: Best practices for logging security events without leaking sensitive data.
domain: cybersecurity
subdomain: log-hygiene
version: '1.0'
---
# Secure Logging Practices

## Overview
Logs are crucial for IR but often inadvertently leak sensitive information.

## Workflow
1. **Define**: Identify high-value security events to log.
2. **Sanitize**: Automatically mask/redact sensitive data (passwords, tokens, PII).
3. **Centralize**: Ship logs to secure, searchable storage.

## Security Rules
- NEVER log raw passwords, credit cards, or API tokens.
- Maintain log integrity (immutable storage).
- Ensure logs are time-synchronized (NTP).
