# Feature Development Playbook

Use this workflow for bounded product features that can be delivered and reviewed safely.

## Workflow

1. Define the problem and the acceptance criteria.
2. Keep the implementation scope narrow and explicit.
3. Write or update the relevant tests before broad changes.
4. Implement the change in small, reviewable steps.
5. Verify behavior with the relevant test or smoke checks.
6. Review the diff for correctness, security, and rollout risk.

## Exit criteria

A feature is ready when:

- the acceptance criteria are met
- the change is reviewable
- the rollout impact is understood
- rollback is possible if needed
