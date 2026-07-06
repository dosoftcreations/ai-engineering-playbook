# Refactor Playbook

Use this playbook when improving structure without changing behavior.

## Guardrails

- Keep the refactor focused on a clear objective.
- Preserve behavior unless the task explicitly requires change.
- Avoid mixing refactors with feature work or bug fixes.
- Make the change reviewable and easy to verify.

## Recommended flow

1. Define the refactor goal.
2. Identify the smallest safe change.
3. Preserve existing behavior while improving structure.
4. Add or update verification where practical.
5. Review the diff for scope creep and risk.
