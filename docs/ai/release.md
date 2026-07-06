# DoSoft Release and Launch Mode

Use this when a product is close to production or public launch.

---

## 1. Launch Mode Goal

Ship safely.

Do not chase perfection.

Priorities:

```text
Security > Stability > Core UX > Performance > Polish > New Features
```

---

## 2. Launch Freeze Rules

During Launch Mode:

- No new non-essential features
- No broad refactor
- No architecture rewrite
- No dependency upgrade unless needed
- No style churn
- No “cleanup while here”
- No experimental feature without flag

Allowed:

- Critical bug fix
- Security fix
- Broken core flow fix
- Billing/quota fix
- Data-loss prevention
- Backup/restore improvement
- Observability improvement
- Launch copy/legal document

---

## 3. Launch Blockers

Do not launch if any of these exist:

- User cannot register/login
- Redirect does not work
- Deleted/disabled/expired links still redirect
- Admin cannot disable abusive links
- Auth bypass
- IDOR
- SSRF
- SQL injection
- XSS affecting users
- Token/secret leak
- Payment webhook can be spoofed
- No database backup
- Production stack trace exposed
- No way to roll back

---

## 4. Manual Deployment Checklist

### Before Deploy

- [ ] Confirm branch/tag
- [ ] Confirm production env
- [ ] Backup database
- [ ] Confirm rollback package/build
- [ ] Confirm migration was tested
- [ ] Confirm secrets are production secrets
- [ ] Confirm domain/DNS
- [ ] Confirm SSL
- [ ] Confirm maintenance message if needed

### Deploy

- [ ] Pull/build latest
- [ ] Run migration
- [ ] Start/restart services
- [ ] Check logs
- [ ] Check health endpoint
- [ ] Check frontend
- [ ] Check redirect
- [ ] Check worker/queue
- [ ] Check admin
- [ ] Check monitoring

### After Deploy Smoke Test

- [ ] Register
- [ ] Verify email
- [ ] Login
- [ ] Create link
- [ ] Redirect link
- [ ] Edit link
- [ ] Disable link
- [ ] Expire link
- [ ] Analytics event appears
- [ ] Forgot password
- [ ] Admin disable link
- [ ] Error page does not expose stack

---

## 5. Rollback Plan

Every launch must know previous version, rollback command, backup location, restore process, migration rollback or restore strategy, who decides rollback, and maximum acceptable downtime.

---

## 6. Post-Launch Watch

First 24 hours:

- Error rate
- Redirect latency
- Login failures
- Signup failures
- DB connections
- Redis memory
- Queue backlog
- Worker failures
- Payment webhook failures
- Abuse reports

---

## 7. Post-Launch Rule

After launch, fix production issues first, do not immediately start large refactor, collect real user feedback, prioritize by revenue/risk, and keep changelog.
