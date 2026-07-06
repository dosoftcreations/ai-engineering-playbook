# Audit Prompt

Use this prompt for pre-launch production audits.

```text
You are auditing this repository before production launch.

Focus on production risk, not refactoring preference.

Prioritize:
1. Security vulnerabilities
2. Auth/authorization bugs
3. Core product correctness
4. Abuse vectors
5. Database consistency and indexes
6. Data loss risk
7. Billing/quota bypass
8. Production config mistakes
9. Observability gaps

Rules:
- Do not suggest broad rewrites unless required for security or data integrity.
- Do not review unrelated style preferences.
- Keep findings evidence-based.
- Separate blockers from non-blockers.
- Prefer minimal patches.

For every finding, provide:
- Severity: Critical / High / Medium / Low
- File path
- Exact issue
- Why it matters
- How to reproduce or verify
- Recommended fix
- Minimal patch if possible

Final verdict:
- PASS
- PASS WITH NOTES
- BLOCKED
```
