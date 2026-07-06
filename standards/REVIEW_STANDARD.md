# Review Standard

Reviews should focus on production risk, correctness, and maintainability.

## 1. Review Philosophy

- Focus on production risk, not personal preference or style formatting when it is consistent with the codebase.
- Block on security risks, data loss risks, authorization bypasses, broken core behavior, unverified migrations, or unclear production configuration.
- Keep suggestions constructive and separate blockers from non-blockers.

## 2. Severity Levels

### Critical
Must fix before merge/launch.
*Examples:* Authentication bypass, public admin endpoints, SQL injection, cross-site scripting (XSS) affecting users, secret/credential leaks, payment webhook spoofing, destructive database migration without backup.

### High
Should fix before launch unless explicitly accepted.
*Examples:* Missing rate limits on sensitive endpoints, missing resource authorization checks, broken token rotation, critical cache invalidation bugs, lack of automated backup processes, missing webhook idempotency.

### Medium
Fix soon; may not block launch.
*Examples:* Weak error handling, missing unit or integration tests, slow query risks (missing indexes), incomplete logging of admin actions, missing monitoring alerts.

### Low
Nice to fix.
*Examples:* Typos, minor user interface polish, small code duplication, non-critical naming inconsistencies.

## 3. Review Output Format

Every finding must include:

```text
Severity: [Critical / High / Medium / Low]
File: [file path and line numbers]
Issue: [description of the problem]
Why it matters: [production risk and impact]
How to verify: [steps to reproduce or verify]
Recommended fix: [minimal corrective code or patch]
```

## 4. Review Checklist

### Security
- [ ] Authentication is required where expected.
- [ ] Authorization is scoped to the user or tenant (no IDOR).
- [ ] No secrets or credentials are hardcoded.
- [ ] Inputs and parameters are validated (prevention of SQL injection, XSS, SSRF).
- [ ] Rate limits are applied to sensitive endpoints.

### Core Workflows & Logic
- [ ] Boundary conditions and edge cases are handled.
- [ ] Error conditions are caught and logged appropriately without exposing tracebacks.
- [ ] Idempotency is handled on webhook and payment endpoints.
- [ ] Plan limits and quotas are enforced on the backend.

### Database
- [ ] Database constraints (nullability, uniqueness) are correct.
- [ ] Indexes exist for all queries on foreign keys and frequently filtered columns.
- [ ] Migrations are backward-compatible and tested.
- [ ] Rollback strategy exists for schema changes.

### Observability & Deployment
- [ ] Key events are logged (errors, auth changes, admin actions).
- [ ] Metrics or alerts are updated if new critical paths are introduced.
- [ ] No manual steps are required for deploy unless documented.
- [ ] Health check endpoints reflect dependency status.

## 5. Review Verdicts

Use one of the following outcomes:

- **PASS**: The change meets all standards.
- **PASS WITH NOTES**: Minor issues found (Medium/Low severity) that do not block launch.
- **BLOCKED**: Blocker issues found (Critical/High severity) that must be resolved.
