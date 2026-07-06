# Monorepo Playbook

Use this playbook when a project is organized as a monorepo and the work affects multiple packages or services.

## Guidance

- Keep changes scoped to the affected areas when possible.
- Maintain clear ownership boundaries across packages.
- Prefer shared conventions for build, test, and release behavior.
- Review cross-package effects explicitly before merging.

## Recommended practices

- Use consistent tooling and conventions across the repository.
- Keep the dependency graph understandable.
- Verify integration points before rollout.
