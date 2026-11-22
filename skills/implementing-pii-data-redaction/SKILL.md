---
name: implementing-pii-data-redaction
description: Automated PII detection and redaction logic using context-aware patterns.
domain: cybersecurity
subdomain: data-privacy
version: '1.0'
---
# PII Data Redaction

## Overview
Context-aware redaction of sensitive PII in logs and agent output using structured detection.

## Workflow
1. **Recognize**: Employ PII recognizers (names, emails, SSNs, credit cards).
2. **Context**: Use structured analysis to distinguish PII from harmless data.
3. **Redact**: Apply sanitization (masking/anonymization) before output.

## Security Rules
- **Secret Scrubbing**: Mutually exclusive check of all agent output for PII.
- **Command Sanity**: Ensure commands don't leak environment variables or PII in logs.
- **Ringkas & Padat**: Redaction logic must be optimized for low latency.
