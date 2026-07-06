# Feature Development Playbook

Use this workflow for bounded product features that can be delivered and reviewed safely.

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

## Steps

1. Define the problem and the acceptance criteria.
2. Keep the implementation scope narrow and explicit.
3. Write or update the relevant tests before broad changes.
4. Implement the change in small, reviewable steps.
5. Verify behavior with the relevant test or smoke checks.
6. Review the diff for correctness, security, and rollout risk.

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

## Launch mode interaction

If Launch Mode is active, new features are disabled by default unless they are launch blockers.

## Exit criteria

A feature is ready when:

- the acceptance criteria are met
- the change is reviewable
- the rollout impact is understood
- rollback is possible if needed

## Final output

```text
Feature:
Scope:
Files changed:
Verified:
Deferred:
Risks:
```
