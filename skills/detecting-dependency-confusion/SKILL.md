---
name: detecting-dependency-confusion
description: Detects supply chain risks by identifying public packages mimicking internal package names.
domain: cybersecurity
subdomain: supply-chain
version: '1.0'
---
# Detecting Dependency Confusion

## Overview
Dependency confusion occurs when package managers are tricked into installing malicious public packages instead of legitimate internal ones.

## Workflow
1. **Inventory**: Catalog all internal package names.
2. **Scan**: Check lockfiles against registry metadata for unexpected origins.
3. **Mitigate**: Use registry namespaces or source scoping.

## Security Rules
- Use private registry namespaces/scoping.
- Lock dependency sources in manifest files (`.npmrc`, `pip.conf`).
- Monitor for public registration of internal package names.
