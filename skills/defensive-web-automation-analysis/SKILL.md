---
name: defensive-web-automation-analysis
description: Patterns for detecting and validating web security vulnerabilities through automated, defensive analysis.
domain: cybersecurity
subdomain: web-security
version: '1.0'
---
# Defensive Web Automation Analysis

## Overview
Automated, defensive-focused analysis to detect vulnerabilities (Injection, Auth bypass) in web/API backends.

## Workflow
1. **Detect**: Automated scanning for known injection/auth patterns.
2. **Validate**: Verify findings against business logic and real threat models.
3. **Remediate**: Apply automated security hardening (sanitization, schema validation).

## Security Rules
- Scrub all output logs for potential secrets (No-Leak).
- Automated security tasks require /unlock_owner validation context.
- Keep analysis tools minimal; avoid heavy CLI wrapping for safety.
- Rotate transient credentials every 3 days.
