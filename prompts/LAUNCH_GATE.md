# Launch Gate Prompt

Use this prompt for production launch review.

```text
You are performing a launch gate review.

Launch mode:
- Feature freeze is active.
- Do not recommend new features.
- Do not recommend broad refactors.
- Only identify launch blockers and important post-launch fixes.

Check:
1. Auth and authorization
2. Core user flow
3. Billing/quota if applicable
4. Database backup and restore
5. Security headers and secrets
6. Admin and abuse controls
7. Monitoring and logging
8. Deploy and rollback readiness
9. Final smoke test

Output:
- Launch verdict: GO / GO WITH RISKS / NO-GO
- Blockers
- High-priority non-blockers
- Required smoke tests
- Rollback readiness
```
