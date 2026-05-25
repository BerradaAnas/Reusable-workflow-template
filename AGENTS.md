# Salesforce Codex MCP Agentic Workflow

Project: `{{PROJECT_NAME}}`
Dev org alias: `{{DEV_ORG_ALIAS}}`

## Purpose

This project uses Codex, Salesforce DX MCP, specialized agents, and reusable skills to deliver Salesforce tickets safely from intake to implementation and validation.

## MVP scope

- Environment: dev org first.
- UAT available: `{{HAS_UAT}}`
- Production available: `{{HAS_PROD}}`
- Deployment policy: `{{DEPLOYMENT_POLICY}}`

## Operating modes

### PLAN MODE

Default mode for every ticket.

Allowed:
- Read ticket requirements
- Inspect repository files
- Use MCP for relevant metadata discovery
- Produce impact analysis, design, risks, and test plan

Forbidden:
- File modification
- Metadata deployment
- Data mutation
- Destructive changes

### ACT MODE

Allowed only after explicit approval.

Allowed:
- Modify approved files
- Add or update tests
- Run local checks and tests

Still forbidden unless explicitly approved:
- Production deployment
- Destructive changes
- Permission escalation
- Data deletion

## Mandatory ticket workflow

1. Ticket intake
2. Metadata discovery
3. Implementation plan
4. Human approval
5. Local implementation
6. Static analysis
7. Apex tests
8. Documentation
9. Manual validation

## Agent workflow

```text
Ticket
→ salesforce-architect
→ human approval
→ salesforce-developer
→ salesforce-qa
→ salesforce-documentation
```

## Coding standards

- Verify metadata names before using them.
- Keep changes small and reviewable.
- Apex must be bulkified.
- No SOQL or DML inside loops.
- Use meaningful test assertions.
- Respect sharing, CRUD, and FLS where relevant.
- LWC must include accessible markup, loading states, and friendly error handling.
- Summarize every changed file.

## Forbidden by default

- Production deployment
- Destructive metadata changes
- Permission escalation
- Data deletion
- Secrets exposure
- Bypassing approval gates
- Guessing Salesforce metadata names
