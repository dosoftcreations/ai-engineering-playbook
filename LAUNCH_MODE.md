# Feature Playbook

## Goal

Deliver the smallest production-ready feature slice.

## Workflow

```text
Clarify requirement
↓
Define MVP scope
↓
Identify affected modules
↓
Plan data/API/UI changes
↓
Implement smallest slice
↓
Add verification
↓
Review risk
```

## Feature slicing

Prefer:

- One user-visible behavior
- One backend endpoint
- One UI flow
- One database migration

Avoid:

- Feature plus refactor
- Feature plus design system rewrite
- Feature plus dependency upgrade
- Feature plus unrelated cleanup

## Launch mode

If Launch Mode is active, new features are disabled by default unless they are launch blockers.

## Final output

```text
Feature:
Scope:
Files changed:
Verified:
Deferred:
Risks:
```
