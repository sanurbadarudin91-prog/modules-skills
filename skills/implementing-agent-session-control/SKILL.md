---
name: implementing-agent-session-control
description: Implements granular session and context isolation for AI agents.
domain: cybersecurity
subdomain: auth-security
version: '1.0'
---
# Agent Session Control

## Overview
Prevents cross-session data leakage and limits agent scope to specific contexts.

## Workflow
1. **Isolation**: Bind agent context to distinct session IDs.
2. **Access Control**: Re-validate authorization before every tool action.
3. **Termination**: Enforce idle timeouts for active sessions.

## Security Rules
- Context MUST be purged immediately after session termination.
- Validate authorization context at every step, not just start.
- Implement strict session scope boundaries.
