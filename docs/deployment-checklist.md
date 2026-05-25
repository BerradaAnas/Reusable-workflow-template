# Deployment Checklist

## Scope

Default MVP environment: dev org only.

## Pre-deployment checks

- [ ] Ticket approved
- [ ] Implementation plan approved
- [ ] Files reviewed
- [ ] No destructive changes included unless explicitly approved
- [ ] Salesforce org alias confirmed
- [ ] Metadata names verified

## Quality checks

- [ ] Static analysis reviewed
- [ ] Apex tests identified
- [ ] Relevant Apex tests pass
- [ ] LWC checks completed if applicable
- [ ] Manual QA completed

## Deployment approval

- [ ] Deployment target confirmed
- [ ] Approver confirmed
- [ ] Rollback plan reviewed
- [ ] Test data ready if needed

## Deployment steps

1. Confirm target org alias.
2. Validate metadata package or source path.
3. Deploy only approved components.
4. Capture deployment result.

## Post-deployment validation

- [ ] Field/config visible
- [ ] Automation behavior confirmed
- [ ] Permission behavior confirmed
- [ ] UI behavior confirmed
- [ ] Error scenario tested
- [ ] UAT scenario tested

## Rollback notes

Document exact files/components to revert and commands/manual steps needed.
