---
name: implementing-code-signing-for-artifacts
description: Implements digital signing for build artifacts to establish provenance and integrity.
domain: cybersecurity
subdomain: supply-chain
version: '1.0'
---
# Code Signing for Artifacts

## Overview
Code signing verifies that software has not been tampered with since it was built and establishes trust.

## Workflow
1. **Setup**: Secure signing keys (HSM/Vault).
2. **Sign**: Sign binaries/containers (e.g., Cosign, GPG).
3. **Verify**: Enforce signature verification in deployment pipelines.

## Security Rules
- NEVER store raw signing keys in CI/CD.
- Use ephemeral or hardware-backed keys.
- Enforce strict signature verification as a deployment gate.
