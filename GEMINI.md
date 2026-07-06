# Review Standard

Review for production risk, not personal preference.

## Severity

### Critical

Must fix before merge or launch.

Examples:

- Auth bypass
- SQL injection
- SSRF
- Payment webhook spoofing
- Secret leak
- Data-loss migration

### High

Should fix before launch.

Examples:

- Missing authorization check
- Missing rate limit on auth
- Broken cache invalidation
- Missing backup
- Broken quota enforcement

### Medium

Fix soon.

Examples:

- Missing important tests
- Slow query risk
- Weak logs
- Incomplete error handling

### Low

Nice to fix.

Examples:

- Copy issue
- Minor duplication
- UI polish

## Finding format

```text
Severity:
File:
Issue:
Why it matters:
How to verify:
Recommended fix:
```

## Verdict

Use:

```text
PASS
PASS WITH NOTES
BLOCKED
```

Do not say PASS if blockers remain.
