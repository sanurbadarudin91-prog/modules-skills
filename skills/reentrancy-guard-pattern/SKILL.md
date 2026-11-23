---
name: reentrancy-guard-pattern
description: Implementation patterns for reentrancy defense (Checks-Effects-Interactions, ReentrancyGuard).
domain: cybersecurity
subdomain: web3-security
version: '1.0'
---
# Reentrancy Guard Pattern

## Overview
Reentrancy occurs when external calls are made before internal state changes. Attackers exploit this to re-enter a function multiple times before the initial call completes, often draining funds.

## Workflow
1. **Apply CEI**: Ensure Checks-Effects-Interactions (CEI). Validate state, update state, THEN perform external interactions.
2. **Apply Guard**: Use a reentrancy guard (`ReentrancyGuard`) to lock state during execution.
3. **Audit**: Scan for `call`/`delegatecall` in all state-changing functions.

## Security Rules
- Always apply CEI pattern as the primary defense.
- Use OpenZeppelin's `ReentrancyGuard` modifier for functions with external calls that cannot satisfy CEI.
- All state changes MUST be committed before external interactions (No-Leak).
- All admin privilege modifications require /unlock_owner validation context.
- Rotate transient test credentials/tokens every 3 days.
- Prohibit modifications that lower security baseline (anti-self-weakening).
