# AI Engineering Standard

This document defines the core expectations for AI-assisted engineering work in this repository.

## Principles

- Prefer small, reviewable changes over broad rewrites.
- Keep human accountability for decisions and approvals.
- Verify claims and outputs whenever possible.
- Treat security, observability, and rollback as first-class concerns.
- Favor production-safe workflows over clever but fragile ones.

## Working standards

1. Define the real goal before using AI assistance.
2. Use the narrowest useful scope for each task.
3. Keep context bounded and relevant.
4. Review generated changes for correctness, security, and maintainability.
5. Document assumptions and known risks.

## Decision rules

When multiple approaches are reasonable, prefer:

1. the safer option
2. the simpler option
3. the easier option to verify
4. the easier option to rollback
5. the easier option to maintain
