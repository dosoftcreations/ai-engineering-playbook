# Implementation Playbook

Use this playbook when turning a plan into a reviewable change.

## Workflow

1. Keep the implementation scope aligned with the plan.
2. Modify the smallest necessary set of files.
3. Verify behavior with the relevant evidence.
4. Review the diff for scope creep and unintended impact.
5. Document any assumptions or remaining risk.

## Guardrails

- Avoid unrelated refactors in the same change.
- Preserve existing behavior unless explicitly changed.
- Keep the implementation easy to review and revert.
