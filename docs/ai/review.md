# DoSoft AI Review Standard

Use this for code review, pre-launch audit, security review, and PR review.

---

## 1. Review Philosophy

Review for production risk, not personal preference.

Do not block on style if it is consistent with the codebase.

Block on security risk, data loss risk, auth/authorization risk, broken core behavior, broken billing/quota, broken redirect, unverified migration, or unclear production config.

---

## 2. Severity Levels

### Critical

Must fix before merge/launch.

Examples: auth bypass, public admin endpoint, SQL injection, XSS affecting users, SSRF, spoofable payment webhook, deleted/disabled link still redirects, data-loss migration without backup, secret leak.

### High

Should fix before launch unless explicitly accepted.

Examples: missing login rate limit, missing resource authorization check, broken refresh token rotation, analytics blocking redirect path, cache invalidation bug for disabled links, no backup process, missing webhook idempotency.

### Medium

Fix soon, may not block launch.

Examples: poor error handling, missing important test, slow query risk, weak admin audit log, incomplete empty state, missing monitoring alert.

### Low

Nice to fix.

Examples: copy issue, minor UI polish, small duplication, non-critical naming issue.

---

## 3. Review Output Format

Every finding must include:

```text
Severity:
File:
Issue:
Why it matters:
How to verify:
Recommended fix:
```

If suggesting a patch, keep it minimal.

---

## 4. Review Checklist

### Security

- [ ] Auth required where expected
- [ ] Authorization scoped to user/workspace
- [ ] No IDOR
- [ ] No secret leak
- [ ] No SQL injection
- [ ] No XSS
- [ ] No SSRF
- [ ] Rate limits on sensitive endpoints
- [ ] Password reset safe
- [ ] Refresh token safe
- [ ] Admin protected

### Redirect Products

- [ ] Disabled links do not redirect
- [ ] Deleted links do not redirect
- [ ] Expired links do not redirect
- [ ] Destination URL validated
- [ ] Private/internal IP destinations blocked
- [ ] Cache invalidation correct
- [ ] Bot traffic handled
- [ ] Analytics does not slow redirect path

### Billing

- [ ] Webhook signature verified
- [ ] Webhook idempotent
- [ ] Plan limits enforced backend-side
- [ ] Downgrade behavior clear
- [ ] Expired subscription handled
- [ ] Payment failure handled

### Database

- [ ] Constraints correct
- [ ] Indexes present
- [ ] Migration safe
- [ ] Backup needed before destructive change
- [ ] No N+1 query risk in hot path

### Observability

- [ ] Error logs
- [ ] Audit logs for admin/security actions
- [ ] Health checks
- [ ] Alerts for critical paths
- [ ] No sensitive data in logs

---

## 5. Review Anti-Patterns

Avoid blocking on personal preference, broad rewrites, unrelated files, vague feedback, “looks good” without verification basis, and new dependencies unless necessary.

---

## 6. Final Review Summary

```text
Verdict:
- PASS
- PASS WITH NOTES
- BLOCKED

Blockers:
- ...

Important non-blockers:
- ...

Verification:
- ...

Launch risk:
- Low / Medium / High
```
