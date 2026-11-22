---
name: anti-leak-guardrail
description: SNR-B AEGIS guardrail enforcement for secret scrubbing, token rotation, and owner validation.
domain: cybersecurity
subdomain: governance
version: '1.0'
---
# Anti-Leak Guardrail (SNR-B AEGIS)

## Overview
Enforces active protection against credential leakage for all operations managed by AEGIS.

## Workflow
1. **Scrub**: Automate secret redaction in all command output and logs.
2. **Rotate**: Enforce 3-day max age for all transient access tokens.
3. **Validate**: Require /unlock_owner validation for sensitive actions.

## Security Rules
- **Secret Scrubbing**: All logs/outputs MUST be filtered for potential secret patterns.
- **Token Rotation**: All issued tokens expire within 72 hours max.
- **Anti-Self-Weakening**: Prohibit modifications that lower security baseline requirements.
- **Owner Validation**: Sensitive operations require /unlock_owner context.
