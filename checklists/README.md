# Checklists

> Actionable, lightweight verification steps to ensure code quality, security compliance, and deployment safety.

---

## 1. Situational Guide

Use this table to choose the correct checklist for your current task phase:

| If you are... | Use this Checklist | Why it matters |
|---|---|---|
| **Staging or committing files locally** | [PRE_COMMIT.md](PRE_COMMIT.md) | Catches trailing whitespace, formatting errors, and massive files early. |
| **Opening a pull request for review** | [PRE_PR.md](PRE_PR.md) | Enforces build checks, unit tests, and self-review before human review. |
| **Executing a staging or production release** | [PRE_RELEASE.md](PRE_RELEASE.md) | Confirms configuration variables, domain settings, and migration states. |
| **Hardening code against security risks** | [SECURITY.md](SECURITY.md) | Scans for exposed keys, missing auth checks, IDORs, and injection vectors. |
| **Setting up logging, alert limits, or metrics** | [OBSERVABILITY.md](OBSERVABILITY.md) | Verifies telemetry coverage on critical user-facing logic. |
| **Validating data retention or recovery plans** | [BACKUP.md](BACKUP.md) | Ensures database restore capabilities are active and tested. |
| **Verifying production readiness settings** | [PRODUCTION.md](PRODUCTION.md) | Confirms backup schedules, SSL, monitoring alerts, and rollback readiness. |

---

## 2. Directory Quick Links

- [PRE_COMMIT.md](PRE_COMMIT.md) — Pre-commit validation.
- [PRE_PR.md](PRE_PR.md) — PR review standards check.
- [PRE_RELEASE.md](PRE_RELEASE.md) — Pre-deployment verification.
- [PRODUCTION.md](PRODUCTION.md) — Operational requirements check.
- [SECURITY.md](SECURITY.md) — Vulnerability and auth hardening.
- [OBSERVABILITY.md](OBSERVABILITY.md) — Telemetry checks.
- [BACKUP.md](BACKUP.md) — Retention and recovery checks.
