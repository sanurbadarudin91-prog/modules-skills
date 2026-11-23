---
name: implementing-ci-runner-hardening
description: Principles for hardening CI/CD build runners.
domain: cybersecurity
subdomain: ci-cd
version: '1.0'
---
# CI Runner Hardening

## Overview
CI runners process sensitive code and secrets; they must be ephemeral and restricted.

## Workflow
1. **Restrict**: Deny outbound network access by default (allowlist only).
2. **Harden**: Run as ephemeral, short-lived agents.
3. **Auth**: Use OIDC identity for CI-to-Cloud rather than static keys.

## Security Rules
- CI runners SHOULD be destroyed after each job.
- NEVER use long-lived cloud credentials in runners.
- Audit all runner activity (command/network logs).
