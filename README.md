# Reusable Salesforce Codex MCP Workflow Template

A reusable agentic workflow template for Salesforce projects using Codex, Salesforce DX MCP, specialized agents, and reusable skills.

This repository packages **delivery workflow guidance**, not Salesforce metadata.

## What this template provides

```text
AGENTS.md
.codex/agents/
.codex/skills/
docs/
scripts/install-workflow.sh
```

## Intended use

Use this repository as a portable workflow package that can be copied into any Salesforce DX project.

It helps Salesforce developers and consultants run a controlled ticket-to-delivery workflow:

```text
Ticket
→ Salesforce Architect
→ Human approval
→ Salesforce Developer
→ Salesforce QA
→ Salesforce Documentation
→ Manual validation/deployment approval
```

## MVP scope

The default template assumes:

- Codex is the AI assistant
- Salesforce DX MCP is used for Salesforce discovery and validation
- One development org is used first
- No production deployment by default
- No destructive changes by default
- Human approval is required before implementation or deployment

## Install into a Salesforce project

From the root of your Salesforce DX project:

```bash
git clone https://github.com/BerradaAnas/Reusable-workflow-template.git /tmp/salesforce-workflow-template
bash /tmp/salesforce-workflow-template/scripts/install-workflow.sh
```

Then edit:

```text
AGENTS.md
.codex/config.toml.example
```

Replace placeholders:

```text
{{PROJECT_NAME}}
{{DEV_ORG_ALIAS}}
{{HAS_UAT}}
{{HAS_PROD}}
{{DEPLOYMENT_POLICY}}
```

## First prompt to use

```text
Use salesforce-architect.
Analyze this ticket in PLAN MODE.
Do not modify files. Do not deploy. Use MCP only for relevant discovery.
Verify Salesforce metadata names before using them.

Ticket:
[PASTE TICKET]
```

## Repository contents

- `AGENTS.md` — root Codex operating rules
- `.codex/agents/` — role-specific agent instructions
- `.codex/skills/` — reusable task procedures
- `docs/` — workflow, ticket, UAT, and deployment templates
- `scripts/install-workflow.sh` — installer for Salesforce DX projects
