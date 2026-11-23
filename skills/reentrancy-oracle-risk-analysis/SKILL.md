---
name: reentrancy-oracle-risk-analysis
description: Analysis patterns for reentrancy and oracle manipulation risks in smart contracts with defensive mitigations.
domain: cybersecurity
subdomain: web3-security
version: '1.0'
---
# Reentrancy & Oracle Risk Analysis

## Overview
Detects and mitigates reentrancy and oracle/price manipulation attacks. These are critical DeFi vulnerabilities.

## Workflow
1. **Reentrancy**: Inspect cross-function calls. Ensure state changes BEFORE external interactions.
2. **Oracle**: Check for price manipulation risks. Avoid spot-price dependencies.
3. **Mitigate**: Apply ReentrancyGuard, Checks-Effects-Interactions, and TWAP oracles.

## Security Rules
- Use  or Checks-Effects-Interactions pattern for all external calls.
- Use time-weighted average prices (TWAP) or decentralized aggregators (Chainlink/Pyth); never spot prices.
- Sensitive state modifications require /unlock_owner validation context.
- Rotate sensitive contract parameters (fees, oracle configs) periodically.
