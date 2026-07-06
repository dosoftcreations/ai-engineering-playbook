# Start Here

> Welcome to the AI Engineering Playbook — a vendor-neutral operating manual for software development teams building, shipping, and maintaining software with AI.

---

## 1. Quick Start

If you are an agent or an engineer starting work in a repository, follow these three steps immediately:

1. **Understand your instructions:** Add the template instructions [templates/AGENTS.md](templates/AGENTS.md) to your workspace customizations (e.g. as `AGENTS.md` or system instructions).
2. **Review the core standard:** Read [standards/AI_ENGINEERING_STANDARD.md](standards/AI_ENGINEERING_STANDARD.md) before making any code modifications.
3. **Know your limits:** Check your token and context budget in [standards/TOKEN_ECONOMY.md](standards/TOKEN_ECONOMY.md) to avoid runaway costs.

---

## 2. Choose Your Path

Depending on your goal, select one of the following paths through the handbook:

### Path A: The Guided Learning Path
*Best for: Engineers new to AI-assisted coding or teams setting up their workflow.*
*   Follow the logical sequence of concepts from philosophy to advanced multi-agent design.
*   **Go to:** [LEARNING_PATH.md](LEARNING_PATH.md)

### Path B: The Structured Curriculum
*Best for: Team leads looking to train engineers or structure a company onboarding flow.*
*   Leveled levels of competency from L1 (Mindset) to L5 (Director/Scale).
*   **Go to:** [CURRICULUM.md](CURRICULUM.md)

### Path C: Quick Reference Lookup
*Best for: Active developers who need to look up a specific workflow, checklist, or template.*
*   **Standards:** [standards/README.md](standards/README.md) (Model selection, context management, tool usage, review standards).
*   **Playbooks:** [playbooks/README.md](playbooks/README.md) (Features, bug fixes, launch mode, release, hotfixes, incidents).
*   **Checklists:** [checklists/README.md](checklists/README.md) (Pre-commit, pre-PR, pre-release, production verification).
*   **Templates:** [templates/README.md](templates/README.md) (Architecture design records, PR templates, issues).
*   **Prompts:** [prompts/README.md](prompts/README.md) (Audit, implementation, and launch-gate prompt patterns).

---

## 3. Core Philosophy

Keep these core operating principles in mind at all times:

```text
Revenue > Perfection  — Keep client and active business work moving.
Stability > Elegance  — Prefer simple, working designs over complex refactors.
Security > Speed     — Do not compromise security for quick features.
Small Diffs > Large   — Keep changes reviewable and targeted.
```

For more, read the full standard in [standards/AI_ENGINEERING_STANDARD.md](standards/AI_ENGINEERING_STANDARD.md).
