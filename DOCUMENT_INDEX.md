# Document Index

> Classification of every document in the repository to establish clear information architecture.

---

## 1. Core Documents

*Essential policies, workflows, budgets, and prompt patterns required for daily operations.*

### Standards
*   [AI Engineering Standard](standards/AI_ENGINEERING_STANDARD.md) — The central operating policy and rules.
*   [Model Selection Standard](standards/MODEL_SELECTION.md) — How to route tasks to capability tiers.
*   [Token Economy Standard](standards/TOKEN_ECONOMY.md) — Resource control and hard token budgets.
*   [Context Management Standard](standards/CONTEXT_MANAGEMENT.md) — Context preservation and read-order priority.
*   [Subagent Standard](standards/SUBAGENT_STANDARD.md) — Rules for spawning and coordinating subagents.
*   [Review Standard](standards/REVIEW_STANDARD.md) — Code review formats and severity definitions.
*   [Security Standard](standards/SECURITY_STANDARD.md) — Baseline security expectations.
*   [Git Standard](standards/GIT_STANDARD.md) — Commits, branches, and diff formatting.
*   [Reasoning Policy](standards/REASONING_POLICY.md) — Directives for logical reasoning.
*   [Tool Usage Standard](standards/TOOL_USAGE_STANDARD.md) — Permitted tools and limits.
*   [MCP Standard](standards/MCP_STANDARD.md) — Server usage and safety.

### Playbooks
*   [Feature Development Playbook](playbooks/FEATURE.md) — Bounded product additions.
*   [Bug Fix Playbook](playbooks/BUG_FIX.md) — Investigating and fixing defects.
*   [Refactoring Playbook](playbooks/REFACTOR.md) — Managing structural cleanups.
*   [Launch Mode Playbook](playbooks/LAUNCH_MODE.md) — Strict release candidate freeze.
*   [Release Playbook](playbooks/RELEASE.md) — Deploying planned updates.
*   [Hotfix Playbook](playbooks/HOTFIX.md) — Resolving urgent live issues.
*   [Incident Response Playbook](playbooks/INCIDENT.md) — Triage, roles, and post-mortems.
*   [Rollback Playbook](playbooks/ROLLBACK.md) — Undoing failed deployments.

### Prompts
*   [Audit Prompt](prompts/AUDIT.md) — Running repository risk analysis.
*   [Implementation Prompt](prompts/IMPLEMENTATION.md) — Executing bounded tasks.
*   [Launch Gate Prompt](prompts/LAUNCH_GATE.md) — Final release candidate gates.
*   [Debugging Prompt](prompts/DEBUGGING.md) — Troubleshooting errors.
*   [Review Prompt](prompts/REVIEW.md) — Automated review support.
*   [Architecture Prompt](prompts/ARCHITECTURE.md) — Proposing structural changes.

---

## 2. Supporting Documents

*Repository configuration, templates, metadata, and guidelines.*

### Setup Guides & Guidance
*   [Start Here](START_HERE.md) — Entry portal for new visitors.
*   [Learning Path](LEARNING_PATH.md) — Guided reading sequence.
*   [Curriculum](CURRICULUM.md) — Leveled onboarding path.
*   [Information Architecture](INFORMATION_ARCHITECTURE.md) — Design layouts.
*   [Agent Rules Template](templates/AGENTS.md) — Workspace rules.
*   [Claude Guidance](templates/CLAUDE.md) — IDE instructions.
*   [Gemini Guidance](templates/GEMINI.md) — IDE instructions.

### Repository Files
*   [Contributing Guidelines](CONTRIBUTING.md) — Coding and PR guidelines.
*   [Governance](GOVERNANCE.md) — Project scope and decision processes.
*   [Maintainer Guide](MAINTAINER_GUIDE.md) — Long-term governance principles.
*   [Maintainers List](MAINTAINERS.md) — Project maintainers.
*   [Security Policy](SECURITY.md) — Disclosing vulnerabilities.
*   [Changelog](CHANGELOG.md) — Release history.
*   [Roadmap](ROADMAP.md) — Project direction.
*   [License](LICENSE) — MIT License.

---

## 3. Reference Documents

*Glossaries, decision trees, checklists, and measurement frameworks.*

### Reference & Decisions
*   [Decision Trees](reference/DECISION_TREE.md) — Step-by-step guides for subagents, refactoring, and playbooks.
*   [Agent Patterns](reference/AGENT_PATTERNS.md) — AI communication architectures.
*   [Anti-Patterns](reference/ANTI_PATTERNS.md) — Behaviors to avoid.
*   [Glossary](reference/GLOSSARY.md) — Terminology definitions.
*   [Model Comparison](reference/MODEL_COMPARISON.md) — Model tiers and strengths.

### Checklists
*   [Pre-Commit Checklist](checklists/PRE_COMMIT.md) — Checks before committing.
*   [Pre-PR Checklist](checklists/PRE_PR.md) — Review before opening a pull request.
*   [Pre-Release Checklist](checklists/PRE_RELEASE.md) — Deploy checks.
*   [Production Checklist](checklists/PRODUCTION.md) — Operational requirements.
*   [Security Checklist](checklists/SECURITY.md) — Hardening steps.
*   [Observability Checklist](checklists/OBSERVABILITY.md) — Logging and dashboards.
*   [Backup Checklist](checklists/BACKUP.md) — Data retention.

### Metrics
*   [AI ROI Framework](metrics/AI_ROI.md) — Measuring token value.
*   [Manual Rework](metrics/MANUAL_REWORK.md) — Tracking bug reopen rates.
*   [Model Usage](metrics/MODEL_USAGE.md) — Tracking routing costs.
*   [Review Quality](metrics/REVIEW_QUALITY.md) — Assessing PR comments.
*   [Token Efficiency](metrics/TOKEN_EFFICIENCY.md) — Assessing token savings.

---

## 4. Examples & Case Studies

*Real-world implementations, case-studies, templates, and historic RFC proposals.*

### Case Studies
*   [Solo Developer Workflow](case-studies/SOLO_DEVELOPER.md) — AI as a single dev team.
*   [Startup Team Workflow](case-studies/STARTUP_TEAM.md) — Small team coordination.
*   [Agency Delivery Workflow](case-studies/AGENCY_WORKFLOW.md) — Managing multiple client repositories.
*   [AI-First Company](case-studies/AI_FIRST_COMPANY.md) — Core organizational structure.

### Examples
*   [Monorepo Example](examples/MONOREPO.md) — Structuring multi-package projects.
*   [Next.js App Example](examples/NEXTJS.md) — Frontend layout integration.
*   [SaaS Platform Example](examples/SAAS.md) — Backend services setup.

### Design proposals (RFCs)
*   [RFC-0001: Token Economy](rfcs/RFC-0001-token-economy.md)
*   [RFC-0002: Model Routing](rfcs/RFC-0002-model-routing.md)
*   [RFC-0003: Subagent Policy](rfcs/RFC-0003-subagent-policy.md)
*   [RFC-0004: Launch Mode](rfcs/RFC-0004-launch-mode.md)
*   [RFC-0005: Context Budget](rfcs/RFC-0005-context-budget.md)
