# Microservices Playbook

Use this playbook when a system is distributed across multiple services.

## Guidance

- Keep contracts between services explicit and versioned where needed.
- Verify integration behavior across service boundaries.
- Preserve observability and rollback options for each deployment.
- Avoid unnecessary coupling between services.

## Recommended practices

- Define service ownership and operational responsibilities clearly.
- Treat schema and API compatibility as first-class concerns.
- Verify degraded-service behavior before release.
