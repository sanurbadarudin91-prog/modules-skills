---
name: implementing-defensive-cryptography
description: Standards for cryptographic algorithms, key management, and data protection.
domain: cybersecurity
subdomain: cryptography
version: '1.0'
---
# Defensive Cryptography

## Overview
Ensures data-in-transit and data-at-rest protection using modern, compliant cryptographic standards.

## Workflow
1. **Algorithmic Select**: Use AES-GCM, TLS 1.3, Argon2id. Avoid legacy (MD5/SHA1/DES).
2. **Key Lifecycle**: Rotate keys (max 3 days for tokens), use HSM/KMS.
3. **Integrity**: Always use authenticated modes (AEAD).

## Security Rules
- NEVER implement custom cryptography.
- All secrets/tokens MUST be rotated within 3 days (/unlock_owner validation).
- Scrub all cryptographic material from logs (Anti-Leak).
