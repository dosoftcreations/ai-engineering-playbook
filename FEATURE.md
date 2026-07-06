# Bug Fix Playbook

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

## Rules

- Do not refactor while fixing.
- Do not fix unrelated bugs.
- Do not broaden scope without asking.
- Prefer targeted tests.
- If reproduction is unclear, state assumptions.

## Subagents

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
