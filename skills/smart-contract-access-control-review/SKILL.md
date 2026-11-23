---
name: smart-contract-access-control-review
description: Audit framework for verifying access control, role permissions, and sensitive function protection in EVM smart contracts.
domain: cybersecurity
subdomain: web3-security
version: '1.0'
---
# Smart Contract Access Control Review

## Overview
Ensures only authorized actors can invoke sensitive functions. Improper access control is a leading cause of contract exploitation.

## Workflow
1. **Identify**: Map all functions, state-changing actions, and roles (owner, admin, user).
2. **Review**: Verify authorization logic. Prefer `AccessControl` for roles or `Ownable` for single-admin.
3. **Emergency**: Audit pause/emergency-stop mechanisms for safety.

## Security Rules
- Enforce strict role-based or ownership validation on all sensitive functions (use OpenZeppelin standard `AccessControl`).
- Validate the caller (`msg.sender`) before all critical state changes.
- All admin privilege modifications require /unlock_owner validation context.
- Implement an emergency `pause` function; ensure only authorized owners can trigger it.
- Rotate transient test credentials/tokens every 3 days.
- Prohibit modifications that lower security baseline (anti-self-weakening).
