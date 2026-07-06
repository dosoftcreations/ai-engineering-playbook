# Playbooks

> Actionable, step-by-step procedures for common engineering and operational tasks in the codebase.

---

## 1. Situational Guide

Use this table to choose the correct playbook for your operational context:

| If you need to... | Use this Playbook | Why it matters |
|---|---|---|
| **Add a new feature slice** | [FEATURE.md](FEATURE.md) | Guides feature slicing and integration gates. |
| **Investigate and patch a bug** | [BUG_FIX.md](BUG_FIX.md) | Resolves defects with minimal risk and high verification. |
| **Refactor structures or cleanup code** | [REFACTOR.md](REFACTOR.md) | Keeps refactoring scoped and prevents styling churn. |
| **Prepare for a release candidate launch** | [LAUNCH_MODE.md](LAUNCH_MODE.md) | Activates feature freezes and audits launch blockers. |
| **Perform a planned release deployment** | [RELEASE.md](RELEASE.md) | Standardizes pre-deploy, deploy, and post-deploy checks. |
| **Deploy an emergency hotfix to live** | [HOTFIX.md](HOTFIX.md) | Restores stability quickly with constrained patches. |
| **Manage an active production incident** | [INCIDENT.md](INCIDENT.md) | Triages severity, assigns roles, and outlines post-mortems. |
| **Revert a broken production deployment** | [ROLLBACK.md](ROLLBACK.md) | Outlines service and schema rollback procedures. |
| **Initialize a new repository or package** | [NEW_PROJECT.md](NEW_PROJECT.md) | Installs standards, configs, and issue templates. |
| **Coordinate a peer code review** | [CODE_REVIEW.md](CODE_REVIEW.md) | Outlines review flows and approval metrics. |
| **Design a complex task or architecture** | [PLANNING.md](PLANNING.md) | Structures research, options, and migration paths. |
| **Run a security audit on a codebase** | [SECURITY_AUDIT.md](SECURITY_AUDIT.md) | Scans for vulnerability patterns and data risk. |
| **Investigate slow queries or API latency** | [PERFORMANCE_REVIEW.md](PERFORMANCE_REVIEW.md) | Outlines profiling, indexing, and caching checks. |
| **Configure packages in a monorepo** | [MONOREPO.md](MONOREPO.md) | Sets boundaries for shared workspaces and types. |
| **Coordinate microservices logic** | [MICROSERVICES.md](MICROSERVICES.md) | Outlines RPC/messaging and auth boundaries. |
| **Perform a database schema migration** | [DATABASE_MIGRATION.md](DATABASE_MIGRATION.md) | Standardizes backward-compatible migrations. |
| **Design or update REST/GraphQL APIs** | [API_DESIGN.md](API_DESIGN.md) | Governs endpoints, error formats, and versioning. |

---

## 2. Directory Quick Links

### Development Playbooks
- [FEATURE.md](FEATURE.md) — Feature development workflow.
- [BUG_FIX.md](BUG_FIX.md) — Bug resolution steps.
- [REFACTOR.md](REFACTOR.md) — Structural cleanups.
- [NEW_PROJECT.md](NEW_PROJECT.md) — Workspace initialization.
- [CODE_REVIEW.md](CODE_REVIEW.md) — Peer code review.

### Operations Playbooks
- [LAUNCH_MODE.md](LAUNCH_MODE.md) — Release candidate freeze rules.
- [RELEASE.md](RELEASE.md) — Planned deployments.
- [HOTFIX.md](HOTFIX.md) — Emergency live patches.
- [INCIDENT.md](INCIDENT.md) — Coordinate outage triage.
- [ROLLBACK.md](ROLLBACK.md) — Reverting deployments.

### Architecture & Design Playbooks
- [PLANNING.md](PLANNING.md) — Multi-step task designs.
- [DATABASE_MIGRATION.md](DATABASE_MIGRATION.md) — Safe schema migrations.
- [API_DESIGN.md](API_DESIGN.md) — Consistent API structures.
- [MONOREPO.md](MONOREPO.md) — Multi-package workspace rules.
- [MICROSERVICES.md](MICROSERVICES.md) — Service interaction boundaries.
- [SECURITY_AUDIT.md](SECURITY_AUDIT.md) — Security scanning procedures.
- [PERFORMANCE_REVIEW.md](PERFORMANCE_REVIEW.md) — Profiling and latency fixes.
