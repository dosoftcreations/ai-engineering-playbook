# AI Engineering Playbook

> Run AI-assisted software development like an engineering system — not a guessing game.

[![Status](https://img.shields.io/badge/status-production-green)](#status)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![AI Engineering](https://img.shields.io/badge/AI-Engineering-black)](#)
[![Vendor Neutral](https://img.shields.io/badge/vendor-neutral-green)](#)

---

## ⚡ The Problem

AI coding assistants (like Cursor, Claude Code, Gemini CLI, and agentic workflows) write code in seconds. But without disciplined engineering standards, teams suffer from:

*   **Code Churn:** AI turning tiny, focused bug fixes into sweeping, untested refactors.
*   **Runaway Costs:** Using extra-high reasoning models for trivial tasks like copying copy or formatting code.
*   **Broken Deploys:** Shipping code that compiles locally but violates basic security, auth, and database constraints.

---

## 🚫 This Is Not a Prompt Collection

This repository is **not** a list of magic prompts, model leaderboards, or marketing tricks. It is a practical handbook of **engineering discipline** for teams building real software with AI.

| ❌ What This Project Is NOT | ✅ What This Project IS |
|---|---|
| A collection of magical prompt dumps | **Stable Engineering Standards** governing AI behavior |
| A leaderboard comparing LLM API speeds | **Cost-Optimized Model Routing** guidelines |
| A list of simple coding hacks | **Operational Playbooks** for features, hotfixes, and incidents |
| A replacement for developer accountability | **Quality Gate Checklists** for pre-commits and releases |

---

## 🧠 Core Philosophy

Every AI agent action has a real cost: *Token Cost, Time Cost, Review Cost, Context Cost, and Production Risk Cost.* Our standards prioritize **useful output per token** over total output.

> [!IMPORTANT]
> ### The Trade-offs We Enforce:
> *   **Revenue > Perfection** — Prioritize active client and business value over endless refactoring.
> *   **Stability > Elegance** — Choose boring, simple, revertible code over complex abstractions.
> *   **Security > Speed** — Never compromise authorization, validation, or rate limits to ship faster.
> *   **Small Diffs > Large Diffs** — Keep changes narrow, reviewable, and highly targeted.

---

## 🚀 Quick Start (In 3 Steps)

### Step 1: Install Agent Rules
Run the installation script from the root of the playbook to copy the agent rules template into your target project:
```bash
# For Unix users:
./setup.sh

# For Windows PowerShell users:
.\setup.ps1
```
*Alternatively, copy [templates/AGENTS.md](templates/AGENTS.md) manually to your project's `.agents` or system instructions.*

### Step 2: Set the Guardrails
Point your AI agent to read the standards before beginning work:
```text
Read standards/AI_ENGINEERING_STANDARD.md before editing code.
```

### Step 3: Run Checklists
Enforce the checklists automatically before commits and PRs using the pre-commit configuration in [templates/PRE_COMMIT_CONFIG.yaml](templates/PRE_COMMIT_CONFIG.yaml).

---

## 🗺️ Repository Navigation

The repository is structured to allow quick lookups based on your current task:

```text
.
├── START_HERE.md               # The entry portal for new visitors
├── LEARNING_PATH.md            # Guided reading roadmap
├── CURRICULUM.md               # Training syllabus divided into L1-L5 levels
├── REPOSITORY_MAP.md           # Visual breakdown of directories
├── DOCUMENT_INDEX.md           # Every document classified by role
│
├── standards/                  # Stable rules (Routing, Token budgets, Context limits)
├── playbooks/                  # Procedures (Features, Bug fixes, Releases, Outages)
├── checklists/                 # Verification (Pre-commit, Pre-PR, Production readiness)
├── templates/                  # Reusable boilerplates (Issue, Pull request templates, ADRs)
├── prompts/                    # Bounded prompt patterns (Audit, Implementation, Launch gates)
└── reference/                  # Glossaries, comparison tables, and decision trees
```

For situational guidance mapping specific tasks to files, see [DOCUMENT_INDEX.md](DOCUMENT_INDEX.md).

---

## 📈 Roadmap

*   **v1.0.0 (Current):** Establish repository navigation, consolidate v2.0 standards, remove duplicate documents, and resolve naming inconsistencies.
*   **v1.1.0 (Next):** Expand worked examples (Frontend Next.js, Backend SaaS, Shared Monorepos) and add case studies on small team routing.
*   **v1.2.0:** Establish quantitative metrics for token savings, rework rates, and CI/CD checker pipelines.

---

## 🤝 Contributing

We welcome contributions that improve engineering practice. See [CONTRIBUTING.md](CONTRIBUTING.md) and [GOVERNANCE.md](GOVERNANCE.md) for quality bars and contributor guidelines.

---

## License

Licensed under the MIT License. See [LICENSE](LICENSE) for details.
