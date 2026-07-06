# Hotfix Playbook

Use this playbook for urgent production fixes that must be applied quickly and safely to resolve a live incident.

## 1. Goal

Restore safe production behavior as quickly and safely as possible.

## 2. Hotfix Rules

- **Strict Containment:** Fix only the specific production issue. Do not include unrelated feature work, cosmetic cleanups, or refactorings.
- **Minimal Diffs:** Prefer the smallest possible patch that resolves the issue over a complete redesign.
- **Verify the Failure Path:** Ensure you understand the exact failure path and verify the fix against that path before deploying.
- **Prepare Rollback:** Always have a rollback package or script ready before applying the fix.

## 3. Hotfix Workflow

```text
Identify impact (what is broken and who is affected)
↓
Identify root cause (verify the specific failure path)
↓
Patch minimal fix
↓
Verify locally (targeted tests + manual reproduction check)
↓
Deploy hotfix
↓
Monitor production logs and error rates
↓
Write follow-up task (for long-term mitigation)
```

## 4. Final Output Template

Every hotfix deployment must document:

```text
Impact: [what was broken, duration, affected users]
Root cause: [why the bug happened in production]
Fix: [summary of the code change applied]
Verification: [how the fix was tested before deploy]
Rollback: [step-by-step commands to revert the change]
Follow-up: [required cleanup, refactor, or test coverage tasks]
```
