# Recipe: Launch SaaS

> Step-by-step procedure for preparing, staging, and launching a SaaS application.

This recipe provides the exact checks and commands required to execute a safe production release of a SaaS application, complying with [playbooks/LAUNCH_MODE.md](../playbooks/LAUNCH_MODE.md) and [playbooks/RELEASE.md](../playbooks/RELEASE.md).

---

## 🛠️ Step-by-Step Execution

### Step 1: Activate Launch Mode
1.  Notify the team that **Launch Mode** is active (Feature Freeze).
2.  Enable environment configurations that disable incomplete experimental features (e.g., set `FEATURE_FLAGS_EXPERIMENTAL=false`).
3.  Freeze library dependency updates in `package.json`.

### Step 2: Clear Launch Blockers
Refer to [playbooks/LAUNCH_MODE.md](../playbooks/LAUNCH_MODE.md). Ensure:
*   Sign-up/Login flows function perfectly on staging.
*   Payment gateway connection (Stripe, etc.) uses sandbox keys and webhook signatures are active.
*   Rate limiting is active on public POST endpoints.

### Step 3: Run Full Validation Pipeline
Before building the release bundle, execute the full local validation pipeline:
```bash
# Typecheck, test, and build locally
npm run lint
npm run typecheck
npm run test
npm run build
```
Any warnings or errors must be fixed before proceeding.

### Step 4: Verify Rollback Package
Confirm that your hosting environment (e.g., Vercel, AWS ECS, Heroku) has the rollback build version ready.
*   **Example for Vercel:** Verify that the previous deployment is visible in the dashboard and can be redeployed with a single click.
*   **Example for Docker/ECS:** Verify the previous image tag exists on ECR (e.g., `my-app:v1.1.9`).

### Step 5: Perform Database Backup & Staging Migration
1.  Run a production database backup (see pg_dump/snapshot rules in [recipes/DATABASE_MIGRATION.md](DATABASE_MIGRATION.md)).
2.  Test the migration script against a copy of production data (on staging) to confirm execution speed and locks.

### Step 6: Trigger Production Deploy
Deploy the release tag:
```bash
# Example tag deployment:
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0
```
Confirm the build succeeds on your CI/CD dashboard (e.g., GitHub Actions).

### Step 7: Run Post-Deploy Smoke Tests
Log into the production system and verify:
- [ ] User registration works.
- [ ] User login works.
- [ ] Payment checkout flow behaves correctly (run a 0.50 USD test transaction if possible).
- [ ] Admin panel settings can be updated.

### Step 8: Monitor Errors and Metrics
Open your monitoring systems (e.g., Sentry, Logrocket, Cloudwatch) and verify:
- Error rates are below target thresholds.
- Average API latency is < 300ms.
- Connection counts are stable.
