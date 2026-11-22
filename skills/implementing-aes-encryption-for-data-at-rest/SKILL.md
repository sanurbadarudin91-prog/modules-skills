---
name: implementing-aes-encryption-for-data-at-rest
description: Concise guide for implementing AES-256-GCM encryption in Python (FIPS 197). Covers key derivation, secure IV/nonce management, and authenticated encryption for data-at-rest.
domain: cybersecurity
subdomain: cryptography
version: '1.0'
---
# Implementing AES-256-GCM for Data-at-Rest

## Overview
AES-256-GCM (AEAD) is the NIST-recommended symmetric block cipher for data protection. It provides both encryption and integrity verification (tamper-detection).

## Workflow
1. **Derive Key**: Use Argon2id or PBKDF2 (min 600k iterations). Never use raw passwords.
2. **Setup**: Generate 96-bit (12-byte) random nonce via `os.urandom()` (CSPRNG).
3. **Encrypt**: Apply AES-256-GCM using `cryptography` library.
4. **Store**: Format as `[salt][nonce][ciphertext][tag]`.

## Security Rules
- **NEVER** reuse a nonce with the same key (catastrophic failure).
- Use authenticated encryption (GCM/CCM) to detect tampering.
- Wipe keys from memory after use.

