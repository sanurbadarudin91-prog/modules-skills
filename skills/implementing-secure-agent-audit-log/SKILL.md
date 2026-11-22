---
name: implementing-secure-agent-audit-log
description: Establishes structured, tamper-evident audit logs for AI agent actions.
domain: cybersecurity
subdomain: audit
version: '1.0'
---
# Secure Agent Audit Logs

## Overview
AI agents require granular, immutable logs to trace actions, decisions, and data access.

## Workflow
1. **Define Schema**: Log timestamp, agent ID, action, model input/output, and tool use.
2. **Implementation**: Enforce logging as a middleware hook in all agent chains.
3. **Storage**: Send logs to secure, append-only centralized storage.

## Security Rules
- NEVER log raw secrets or sensitive PII.
- Ensure log integrity (use hash-chaining or WORM storage).
- Enable real-time alerting for suspicious action patterns.
