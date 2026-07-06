# Release Playbook

## Before release

- Confirm version/commit.
- Confirm environment.
- Backup database.
- Confirm rollback plan.
- Run targeted tests.
- Run smoke tests.
- Confirm monitoring.
- Confirm error tracking.

## During release

- Deploy.
- Run migrations.
- Restart services.
- Check health endpoint.
- Check logs.
- Check critical flows.

## After release

- Monitor error rate.
- Monitor latency.
- Monitor DB connections.
- Monitor queue backlog.
- Monitor user reports.
- Keep rollback window open.

## Release note format

```text
Version:
Date:
Changes:
Migration:
Risk:
Rollback:
```
