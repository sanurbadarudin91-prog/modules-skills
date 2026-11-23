---
name: implementing-supply-chain-defense
description: Patterns for securing software supply chain via dependency auditing and artifact signing.
domain: cybersecurity
subdomain: supply-chain
version: '1.0'
---
# Supply Chain Defense

## Overview
Secures the pipeline by validating dependencies and establishing artifact provenance.

## Workflow
1. **Audit**: Audit dependencies for known vulnerabilities and malicious behavior.
2. **Pin**: Use SHA-based pinning for all dependencies.
3. **Sign**: Sign artifacts (e.g., Cosign) to establish provenance.

## Security Rules
- All dependencies MUST be scanned (Scorecard/Grype).
- Enforce artifact signing as a deployment gate.
- Prohibit unpinned, transient dependencies in production.
