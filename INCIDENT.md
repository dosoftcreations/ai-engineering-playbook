# Hotfix Playbook

## Goal

Restore safe production behavior quickly.

## Rules

- Fix only the production issue.
- No refactor.
- No cleanup.
- No unrelated improvements.
- Prefer minimal patch.
- Verify exact failure path.
- Prepare rollback.

## Workflow

```text
Identify impact
↓
Identify root cause
↓
Patch minimal fix
↓
Verify
↓
Deploy
↓
Monitor
↓
Write follow-up task
```

## Final output

```text
Impact:
Root cause:
Fix:
Verification:
Rollback:
Follow-up:
```
