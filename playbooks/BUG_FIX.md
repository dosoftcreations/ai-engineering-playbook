# Bug Fix Playbook

Use this workflow when fixing a defect in a production or pre-production system.

## Workflow

1. Reproduce the issue or document the observed failure.
2. Identify the root cause before changing behavior.
3. Implement the smallest fix that addresses the cause.
4. Add or update regression coverage where practical.
5. Verify the fix with the relevant evidence.
6. Review the change for side effects and rollback readiness.

## Guardrails

- Do not paper over symptoms without understanding the cause.
- Avoid broad refactors in the same change.
- Document any remaining risk explicitly.
