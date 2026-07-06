# Launch Mode Playbook

Launch Mode is used when a product is close to production.

## Priority order

```text
Security > Stability > Core UX > Performance > Polish > New Features
```

## Rules

- Feature freeze by default.
- No broad refactor.
- No cosmetic cleanup.
- No architecture rewrite.
- No dependency upgrade unless required.
- Keep patches small.
- Verify every change.
- Prefer boring solutions.

## Launch blockers

Do not launch with:

- Broken signup/login
- Broken core redirect
- Auth bypass
- IDOR
- SSRF
- SQL injection
- XSS affecting users
- Secret leak
- Payment webhook spoofing
- Deleted/disabled links still redirect
- No database backup
- No rollback plan

## Daily launch loop

```text
List blockers
↓
Fix highest-risk blocker
↓
Verify
↓
Smoke test
↓
Update launch checklist
```
