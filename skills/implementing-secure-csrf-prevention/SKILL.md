---
name: implementing-secure-csrf-prevention
description: Strategies to prevent Cross-Site Request Forgery attacks.
domain: cybersecurity
subdomain: backend-security
version: '1.0'
---
# Secure CSRF Prevention

## Overview
CSRF forces authenticated users to execute unwanted actions. Prevention relies on validating request origin.

## Workflow
1. **Anti-CSRF Tokens**: Inject unique, per-session tokens in state-changing requests.
2. **Origin Validation**: Verify  and  headers.
3. **SameSite**: Enforce  or  cookies.

## Security Rules
- Use modern CSRF tokens for all state-changing requests (POST/PUT/DELETE).
- Rely on  cookies as a defense-in-depth measure.
- Always validate the request origin.
