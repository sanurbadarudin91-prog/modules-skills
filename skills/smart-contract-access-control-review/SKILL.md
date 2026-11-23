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
2. **Review**: Verify implementation of authorization logic (`require(msg.sender == owner)`, AccessControl/Ownable).
3. **Emergency**: Audit pause/emergency-stop mechanisms for safety.

## Security Rules
- Enforce strict role-based or ownership validation on all sensitive functions.
- Validate the caller (`msg.sender`) before all critical state changes.
- Ensure all admin privilege modifications require /unlock_owner validation context.
- Implement an emergency `pause` function; ensure only authorized owners can trigger it.
