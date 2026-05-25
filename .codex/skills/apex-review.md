# Skill: apex-review

## Goal

Review Apex for correctness, maintainability, security, platform limit safety, and testability.

## Checklist

- Bulk-safe logic
- No SOQL inside loops
- No DML inside loops
- Correct sharing model
- Null handling
- CRUD and FLS considerations where relevant
- Salesforce governor-limit awareness
- Clear error handling
- Testable design
- Meaningful test assertions

## Output

Group findings by severity:

- Critical
- High
- Medium
- Low

For each finding, include:

- Issue
- Why it matters
- Suggested fix
