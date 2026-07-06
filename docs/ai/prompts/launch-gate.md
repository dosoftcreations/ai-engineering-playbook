# Launch Gate Prompt

```text
You are performing a launch gate review.

Product:
[product name]

Launch mode:
- Feature freeze is active.
- Do not recommend new features.
- Do not recommend broad refactors.
- Only identify launch blockers and important post-launch fixes.

Check:
1. Auth
2. Redirect/core flow
3. Billing/quota if applicable
4. Database backup/restore
5. Security headers/secrets
6. Admin abuse controls
7. Monitoring/logging
8. Manual deploy/rollback
9. Final smoke test

Output:
- Launch verdict: GO / GO WITH RISKS / NO-GO
- Blockers
- High priority non-blockers
- Smoke test checklist
- Rollback readiness
```
