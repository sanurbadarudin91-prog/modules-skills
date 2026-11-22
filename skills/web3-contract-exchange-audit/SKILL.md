---
name: web3-contract-exchange-audit
description: Audit framework for DeFi/Exchange contracts (oracle manipulation, LP slippage, fee manipulation).
domain: cybersecurity
subdomain: web3-security
version: '1.0'
---
# DeFi Exchange Contract Audit

## Overview
Audit focus for complex DeFi contracts to prevent capital loss via business logic manipulation.

## Workflow
1. **Oracle**: Check for price manipulation risks.
2. **Liquidity**: Audit slippage and impermanent loss handling.
3. **Fees**: Verify fee logic and owner withdrawal permissions.

## Security Rules
- Validate all price inputs against multiple reliable oracles.
- Enforce slippage protection on all trades/swaps.
- Limit owner permissions; prohibit unmitigated fee changes.
- All admin privilege changes MUST be time-locked or multi-sig.
