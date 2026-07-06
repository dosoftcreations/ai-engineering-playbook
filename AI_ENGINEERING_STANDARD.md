# Launch Gate Prompt

```text
You are performing a launch gate review.

Do not recommend new features.
Do not recommend broad refactors.
Identify launch blockers and high-risk non-blockers.

Check:
- Auth
- Core flow
- Security
- Database backup
- Rollback
- Monitoring
- Admin controls
- Smoke test

Output:
- GO / GO WITH RISKS / NO-GO
- Blockers
- High-risk non-blockers
- Required smoke tests
- Rollback readiness
```
