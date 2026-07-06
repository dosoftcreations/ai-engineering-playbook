# AI Engineering Playbook

> A vendor-neutral operating manual for software engineering teams building, shipping, and maintaining production systems with AI.

[![Status](https://img.shields.io/badge/status-production-green)](#status)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![AI Engineering](https://img.shields.io/badge/AI-Engineering-black)](#)
[![Vendor Neutral](https://img.shields.io/badge/vendor-neutral-green)](#)

---

## 1. Problem Statement

AI coding assistants (like Cursor, Claude Code, Gemini CLI, and agentic workflows) are revolutionizing software development. However, most teams operate AI agents with ad-hoc prompts, runaway token usage, context pollution, inconsistent review standards, and weak production discipline.

Without structured engineering practices, AI assistance leads to:
*   **Unintended Rewrites:** Small edits ballooning into sweeping, untested refactors.
*   **Runaway Costs:** Heavy, high-reasoning models used for simple tasks (like formatting).
*   **Broken Deployments:** Shipping code that compiles locally but violates basic production requirements.

This repository provides the **discipline, standards, and playbooks** required to run AI-assisted development like a real engineering system.

---

## 2. This Is NOT

*   ❌ A collection of "magic prompts" or copy-paste tricks.
*   ❌ A leaderboard of AI models or chat tools.
*   ❌ A repository of AI news or marketing hype.
*   ❌ A replacement for human engineering responsibility.

---

## 3. Core Philosophy

Our standards align to these core trade-offs:

```text
Revenue > Perfection  — Focus on active business and client needs first.
Stability > Elegance  — Prefer simple, working code over cosmetic cleanups.
Security > Speed     — Do not compromise security for quick feature delivery.
Small Diffs > Large   — Keep edits targeted, readable, and reviewable.
Quality per Token > Output per Request
```

AI agents are not free. Every agent action has a cost (token, time, review, risk). The goal is not to maximize AI usage; the goal is to ship high-quality software with minimal waste.

---

## 4. Quick Start

Get up and running with the playbook in three steps:

1.  **Configure Your Workspace:** Copy the contents of [templates/AGENTS.md](templates/AGENTS.md) into your repository's agent configuration file (e.g., `.agents`, `AGENTS.md`, or your system instructions).
2.  **Establish the Rules:** Point your AI agent to the playbook:
    ```text
    Read standards/AI_ENGINEERING_STANDARD.md before editing code.
    Use playbooks/LAUNCH_MODE.md if the product is close to release.
    ```
3.  **Deploy Issue Templates:** Ensure issue templates are set up under `.github/ISSUE_TEMPLATE/` to guide bug reports and feature proposals.

---

## 5. Repository Map

The playbook is organized into modular directories:

*   [standards/](standards/) — Stable rules, policies, model routing, and token budgets.
*   [playbooks/](playbooks/) — Actionable, step-by-step procedures for coding, releases, and incident mitigation.
*   [checklists/](checklists/) — Verification checklists to run before commits, PR reviews, and deployments.
*   [templates/](templates/) — Reusable boilerplates (PR templates, issue structures, ADRs).
*   [prompts/](prompts/) — Bounded prompt patterns for specific developer operations.
*   [reference/](reference/) — Glossary, decision trees, and model capability tier comparisons.

For a full breakdown, see [REPOSITORY_MAP.md](REPOSITORY_MAP.md) or the [DOCUMENT_INDEX.md](DOCUMENT_INDEX.md).

---

## 6. Learning Path

For new engineers or team onboarding, follow this reading order:

1.  **Start Here:** [START_HERE.md](START_HERE.md) — The onboarding portal.
2.  **Standard:** [standards/AI_ENGINEERING_STANDARD.md](standards/AI_ENGINEERING_STANDARD.md) — Task sizing and editing rules.
3.  **Model Selection:** [standards/MODEL_SELECTION.md](standards/MODEL_SELECTION.md) — Cost routing guidelines.
4.  **Token Economy:** [standards/TOKEN_ECONOMY.md](standards/TOKEN_ECONOMY.md) — Budgeting rules.
5.  **Context Management:** [standards/CONTEXT_MANAGEMENT.md](standards/CONTEXT_MANAGEMENT.md) — Scope control.
6.  **Playbooks:** [playbooks/README.md](playbooks/README.md) — Standard workflows.

For the full roadmaps, see [LEARNING_PATH.md](LEARNING_PATH.md) and [CURRICULUM.md](CURRICULUM.md).

---

## 7. Roadmap

*   **v1.0.0 (Current):** Stabilize structure, remove duplicate files, enforce naming consistency, and resolve filename mismatches.
*   **v1.1.0 (Next):** Expand worked examples (Next.js, SaaS, Monorepos) and add case studies on team routing.
*   **v1.2.0:** Establish quantitative metrics for token savings and rework rates.

See [ROADMAP.md](ROADMAP.md) for details.

---

## 8. Contributing

Contributions should focus on improving engineering practice rather than adding hype. See [CONTRIBUTING.md](CONTRIBUTING.md) and [GOVERNANCE.md](GOVERNANCE.md) for quality bars and contributor guidelines.

---

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
