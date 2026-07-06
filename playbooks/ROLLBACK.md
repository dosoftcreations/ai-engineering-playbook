# Rollback Playbook

Use this playbook when a change must be reversed safely.

## Rollback decision

Rollback when:

- a release introduces correctness or security issues
- monitoring indicates unexpected degradation
- the change cannot be safely operated in production

## Rollback workflow

1. Confirm the scope and risk of the rollback.
2. Identify the last known good state or deployment.
3. Execute the rollback with clear ownership.
4. Verify the system behavior after rollback.
5. Document the incident and the lessons learned.
