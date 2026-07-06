# Learning Paths

> **Document Responsibility:** This file is the dedicated educational roadmap for the repository. Its sole purpose is to guide readers sequentially through the documentation based on role-based journeys (Solo Founder, Team Lead, Production Launch) or top-down reading order, with estimated reading times and specific file lists.

---

## 1. Onboarding Paths (By User Journey)

### 🚀 Path A: Solo Founder
*Best for: Solopreneurs, single-developer startups, and builders using AI as an automated development team.*
*   **Goal:** Build, test, and ship features rapidly with zero code bloat and zero token cost waste.
*   **Reading Roadmap:**
    1.  [Core Philosophy](README.md#3-core-philosophy) (README.md) — Establish the cost-value mindset.
    2.  [AI Engineering Standard](standards/AI_ENGINEERING_STANDARD.md) (standards/) — Master task sizes, editing limits, and stop rules.
    3.  [Model Selection Standard](standards/MODEL_SELECTION.md) (standards/) — Route simple tasks to Small/Mini models to save costs.
    4.  [Agent Template](templates/AGENTS.md) (templates/) — Copy and load rules into your coding IDE.
*   **Estimated reading time:** 20 mins

### 👥 Path B: Team Lead
*Best for: Tech leads, engineering managers, and architects establishing standards for a development team.*
*   **Goal:** Enforce quality controls, run safe code reviews, and automate verification checks.
*   **Reading Roadmap:**
    1.  [Review Standard](standards/REVIEW_STANDARD.md) (standards/) — Set up PR severity levels and checklists.
    2.  [Git Standard](standards/GIT_STANDARD.md) (standards/) — Maintain clean branch and commit trees.
    3.  [Subagent Standard](standards/SUBAGENT_STANDARD.md) (standards/) — Set boundaries for multi-agent delegation.
    4.  [Governance](GOVERNANCE.md) (root/) — Establish contribution standards.
*   **Estimated reading time:** 25 mins

### 🚢 Path C: Production Launch
*Best for: Operations engineers, release managers, and developers preparing to ship a product to live users.*
*   **Goal:** Minimize release risks, protect database integrity, and ensure rollback capability.
*   **Reading Roadmap:**
    1.  [Launch Mode Playbook](playbooks/LAUNCH_MODE.md) (playbooks/) — Learn launch freeze rules and blocker triage.
    2.  [Release Playbook](playbooks/RELEASE.md) (playbooks/) — Walk through pre-deploy, deploy, and post-deploy.
    3.  [Production Checklist](checklists/PRODUCTION.md) (checklists/) — Verify infrastructure, SSL, backups, and alerting.
    4.  [Incident Playbook](playbooks/INCIDENT.md) (playbooks/) — Plan triage and post-mortems for outages.
*   **Estimated reading time:** 30 mins

---

## 2. General Sequential Reading Path

If you prefer to read the playbook cover-to-cover, follow this sequence:

1.  **Start Here:** [START_HERE.md](START_HERE.md) — Onboarding overview.
2.  **Core Standard:** [standards/AI_ENGINEERING_STANDARD.md](standards/AI_ENGINEERING_STANDARD.md) — Rules of the road.
3.  **Model Choice:** [standards/MODEL_SELECTION.md](standards/MODEL_SELECTION.md) — Routing logic.
4.  **Token Budgets:** [standards/TOKEN_ECONOMY.md](standards/TOKEN_ECONOMY.md) — Cost limits.
5.  **Context Limits:** [standards/CONTEXT_MANAGEMENT.md](standards/CONTEXT_MANAGEMENT.md) — Scope control.
6.  **Playbooks:** [playbooks/README.md](playbooks/README.md) — Operational guides.
7.  **Checklists:** [checklists/README.md](checklists/README.md) — Quality validation steps.
8.  **Reference:** [reference/README.md](reference/README.md) — Glossary and decision trees.
