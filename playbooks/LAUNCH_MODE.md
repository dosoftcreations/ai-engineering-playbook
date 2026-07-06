# Launch Mode Playbook

Launch Mode is used when a product or feature is close to a production release. The goal is to ship safely and minimize production risk.

## 1. Priority Order

During Launch Mode, align decisions to this priority order:

```text
Security > Stability > Core UX > Performance > Polish > New Features
```

## 2. Launch Rules

- **Feature Freeze:** New features are disabled or deferred by default unless they are explicit launch blockers.
- **No Broad Refactors:** Do not perform structural cleanups, style changes, or cosmetic refactoring.
- **Dependency Freeze:** Avoid upgrading library dependencies unless required to fix a security vulnerability or critical bug.
- **Keep Patches Small:** Keep changes highly focused and narrow.
- **Verify Every Change:** Every commit must be accompanied by explicit verification evidence (tests, lint, build, or smoke logs).

## 3. Daily Launch Loop

Align team focus daily using this loop:

```text
Identify & list launch blockers
↓
Fix highest-risk blocker with minimal patch
↓
Verify patch (automated tests + manual checks)
↓
Perform full smoke test
↓
Update launch checklist
```

## 4. Launch Blockers

Do not launch if any of these blockers exist:

- Broken registration, login, or core user flows.
- Known authentication or authorization bypasses (including IDOR).
- Potential SQL injection, cross-site scripting (XSS), or server-side request forgery (SSRF) vulnerabilities.
- API keys, credentials, or secrets exposed in code or configuration.
- Broken payment flows or spoofable webhooks.
- No database backup process or rollback plan.
- Production error stack traces exposed to users.

## 5. Launch Checklist

Before making the release decision, confirm:
- [ ] Scope and intended rollout are confirmed.
- [ ] Authentication, authorization, and critical flows are verified.
- [ ] Security-sensitive changes are reviewed.
- [ ] Monitoring, alerts, and error tracking are active.
- [ ] Database backup is verified.
- [ ] Rollback package/build is ready and tested.
- [ ] Smoke tests are completed successfully.

## 6. Launch Decision

Classify the launch outcome as one of the following:

- **GO**: No blockers, all checks pass.
- **GO WITH RISKS**: Minor non-blocker issues exist, but are accepted by the owner with a mitigation plan.
- **NO-GO**: A blocker affects correctness, security, or safe rollout. The launch is blocked until resolved.
