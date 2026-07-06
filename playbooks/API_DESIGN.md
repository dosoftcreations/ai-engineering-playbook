# API Design Playbook

Use this playbook when designing or changing an API contract.

## Guidance

- Prefer clear and stable interfaces over clever abstractions.
- Keep versioning and compatibility decisions explicit.
- Review authentication, permissions, and error semantics carefully.
- Ensure the API can be observed and operated safely in production.

## Recommended practices

- Document the contract and the expected behavior.
- Preserve backward compatibility when the change can reasonably avoid breakage.
- Verify the affected client and server flows before rollout.
