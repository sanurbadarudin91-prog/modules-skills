---
name: circuit-breaker-pause-guard
description: Implementation patterns for emergency circuit breakers and pause guards to prevent cascading failures.
domain: cybersecurity
subdomain: backend-security
version: '1.0'
---
# Circuit Breaker & Pause Guard

## Overview
Circuit breakers prevent cascading failures by stopping execution when error thresholds are exceeded. In smart contracts, this acts as a 'Pause' mechanism.

## Workflow
1. **Detect**: Monitor error rates, anomalies, or malicious triggers.
2. **Trigger**: Transition system to a 'Paused' or 'Open' (inactive) state automatically or manually.
3. **Recover**: Reset state ONLY after thorough manual audit and validation.

## Security Rules
- ALWAYS implement an emergency pause function (restricted to authorized owners).
- Circuit breakers MUST trigger on sustained error thresholds.
- Emergency recovery/reset REQUIRES /unlock_owner validation context.
- Prohibit modifications that allow non-owners to trigger or reset the pause (anti-self-weakening).
