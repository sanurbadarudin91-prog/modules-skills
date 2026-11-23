#!/bin/bash
# Mock test for IaC misconfig (DO NOT USE REAL SECRETS)
echo "Running IaC misconfig scan mock..."
# Simulate public S3 bucket finding
echo "MISCONFIG: Public S3 bucket detected in dummy-iac-template"
exit 1
