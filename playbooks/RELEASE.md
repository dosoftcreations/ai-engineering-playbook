# Release Playbook

Use this playbook for planned production releases to ensure a safe, predictable deployment.

## 1. Release Flow

### Before Release
- **Scope & Commit:** Confirm the exact branch, commit, or version tag being released.
- **Environment:** Verify that all target environment configuration and variables are correct.
- **Database Backup:** Ensure a verified database backup is taken right before the release.
- **Rollback Readiness:** Confirm that the rollback package or code version is ready and that a rollback plan is documented.
- **Verification:** Run all regression tests and targeted checks on staging.
- **Monitoring:** Ensure observability systems and error tracking are active.

### During Release
- **Deploy:** Execute the build/deployment pipeline.
- **Database Migrations:** Run migrations and monitor execution times.
- **Service Verification:** Restart services if necessary and verify the health check endpoints.
- **Verification Loop:** Check the application logs for initialization errors.
- **Smoke Check:** Perform manual validation of critical user paths (auth, core logic).

### After Release
- **Error Rates:** Monitor error tracking dashboards for spike increases.
- **Performance:** Check application latency and database connection usage.
- **Queue Backlogs:** Ensure background tasks and queue consumers are processing work.
- **Feedback:** Monitor user support channels for regression reports.
- **Rollback Window:** Keep the rollback window open and active for at least 1 hour.

## 2. Release Note Template

Every release should document:

```text
Version/Tag: [e.g., v1.2.0]
Date: [YYYY-MM-DD]
Changes:
- [list of key changes]
Migration: [yes/no, duration, and migration commands]
Risk: [Low / Medium / High, with mitigation details]
Rollback: [step-by-step commands to undo deployment]
```

## 3. Release Exit Criteria

A release is considered complete and successful when:
- The deployment is verified on production.
- Core business metrics are stable.
- Error rates are below target thresholds for at least 1 hour post-deployment.
