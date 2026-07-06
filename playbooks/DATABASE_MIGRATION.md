# Database Migration Playbook

Use this playbook when a change requires schema or data migration.

## Guidance

- Treat database changes as high-risk operations.
- Plan rollback and recovery before applying the migration.
- Verify backup and restore readiness.
- Test the migration in a non-production environment whenever possible.

## Recommended practices

- Make migrations reversible when feasible.
- Keep changes incremental and scoped.
- Review data safety and destructive behavior explicitly.
