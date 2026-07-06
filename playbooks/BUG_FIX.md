# Bug Fix Playbook

Use this workflow when fixing a defect in a production or pre-production system.

## Goal

Fix the bug with minimum scope and maximum verification.

## Workflow

```text
Reproduce or understand bug
↓
Identify affected module
↓
Read bounded context
↓
Find root cause
↓
Patch minimally
↓
Verify
↓
Review diff
↓
Report risks
```

## Steps

1. Reproduce the issue or document the observed failure.
2. Identify the root cause before changing behavior.
3. Implement the smallest fix that addresses the cause.
4. Add or update regression coverage where practical.
5. Verify the fix with the relevant evidence.
6. Review the change for side effects and rollback readiness.

## Rules

- Do not refactor while fixing.
- Do not fix unrelated bugs.
- Do not broaden scope without asking.
- Do not paper over symptoms without understanding the cause.
- Prefer targeted tests.
- If reproduction is unclear, state assumptions.
- Document any remaining risk explicitly.

## Subagent guidance

Use 0 subagents by default.

Use 1 subagent only if:

- Investigation and patch can be separated.
- Multiple independent failure causes exist.
- Verification can happen in parallel.

## Final output

```text
Root cause:
Fix:
Files changed:
Verified:
Risks:
```
