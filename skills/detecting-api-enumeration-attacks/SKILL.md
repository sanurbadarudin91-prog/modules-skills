---
name: detecting-api-enumeration-attacks
description: Detects API enumeration by identifying sequential identifier scanning, UUID brute-forcing, and parameter tampering in gateway/WAF logs.
domain: cybersecurity
subdomain: api-security
version: '1.0'
---
# Detecting API Enumeration Attacks

## Overview
Enumeration attacks aim to discover API resources (BOLA/IDOR). Detection focuses on identifying high-volume, systematic parameter testing.

## Workflow
1. **Monitor**: Analyze API gateway/WAF access logs for sequential ID access.
2. **Alert**: Flag unusual patterns (e.g., UUID iteration, parameter swapping).
3. **Analyze**: Correlate with 401/403 errors indicating unauthorized resource attempts.

## Security Rules
- Rate-limit endpoint access by user/IP.
- Use non-sequential, hard-to-guess identifiers (UUIDv4).
- Implement per-object authorization (BOLA check).
