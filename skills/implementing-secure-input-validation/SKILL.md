---
name: implementing-secure-input-validation
description: Comprehensive input validation patterns to prevent injection attacks (SQLi, XSS, Command Injection).
domain: cybersecurity
subdomain: backend-security
version: '1.0'
---
# Secure Input Validation

## Overview
Input validation is the first line of defense against injection attacks. Reject all unexpected data.

## Workflow
1. **Define**: Establish allowlists (type, length, format, range).
2. **Sanitize**: Use context-aware encoding for outputs.
3. **Validate**: Perform validation at the application boundary (the "trust anchor").

## Security Rules
- Never trust user input.
- Default to "deny all"; allow explicit safe patterns.
- Use parameterized queries, not string concatenation.
