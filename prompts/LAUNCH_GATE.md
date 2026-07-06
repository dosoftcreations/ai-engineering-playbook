# Launch Gate Prompt

Use this prompt for production launch review.

```text
You are performing a launch gate review.

Do not recommend new features.
Do not recommend broad refactors.
Identify launch blockers and high-risk non-blockers.

Review areas:
- authentication and authorization
- core user flow
- security
- backup and recovery
- rollback readiness
- monitoring and alerts
- admin controls
- smoke tests

Output:
- GO / GO WITH RISKS / NO-GO
- blockers
- high-risk non-blockers
- required smoke tests
- rollback readiness
```