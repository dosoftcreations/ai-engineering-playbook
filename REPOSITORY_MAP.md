# Repository Map

> **Document Responsibility:** This file is the structural and folder-level guide. Its sole purpose is to explain the physical directory layout of the repository, the responsibilities of each directory, and the relationships between them.

---

## 1. Repository Structure

```text
.
├── .github/                   # GitHub configuration & Issue templates
├── standards/                 # Core rules, limits, and standards
├── playbooks/                 # Step-by-step operational workflows
├── checklists/                # Verification checklists (pre-commit, release, etc.)
├── templates/                 # Reusable boilerplates (PR templates, issue structures, ADRs)
├── prompts/                   # Production-oriented prompt patterns
├── recipes/                   # Step-by-step exact execution recipes (SaaS launch, bug hotfix)
├── reference/                 # Glossary, comparisons, decision trees
├── case-studies/              # Contextual setups (solo devs, startups, agencies)
├── metrics/                   # Measurement frameworks (ROI, token efficiency)
└── rfcs/                      # Proposed changes and architectural designs
```

---

## 2. Directory Responsibilities

### [standards/](standards/)
*   **Role:** Governance and Policy.
*   **Content:** Stable rules defining what is allowed and expected.
*   **Key Files:** [standards/AI_ENGINEERING_STANDARD.md](standards/AI_ENGINEERING_STANDARD.md), [standards/MODEL_SELECTION.md](standards/MODEL_SELECTION.md).

### [playbooks/](playbooks/)
*   **Role:** Operations and Workflows.
*   **Content:** Procedural execution steps for tasks.
*   **Key Files:** [playbooks/FEATURE.md](playbooks/FEATURE.md), [playbooks/BUG_FIX.md](playbooks/BUG_FIX.md).

### [recipes/](recipes/)
*   **Role:** Actionable Execution.
*   **Content:** Exact shell commands, db backup instructions, and release steps.
*   **Key Files:** [recipes/LAUNCH_SAAS.md](recipes/LAUNCH_SAAS.md), [recipes/FIX_PRODUCTION_BUG.md](recipes/FIX_PRODUCTION_BUG.md).

### [checklists/](checklists/)
*   **Role:** Quality Gate and Verification.
*   **Content:** Lightweight, actionable verification steps.
*   **Key Files:** [checklists/PRE_PR.md](checklists/PRE_PR.md), [checklists/PRODUCTION.md](checklists/PRODUCTION.md).

### [templates/](templates/)
*   **Role:** Boilerplate and Speed.
*   **Content:** Reusable layouts to maintain consistency.
*   **Key Files:** [templates/PULL_REQUEST_TEMPLATE.md](templates/PULL_REQUEST_TEMPLATE.md), [templates/ADR.md](templates/ADR.md).

### [prompts/](prompts/)
*   **Role:** Prompt Engineering & Automation.
*   **Content:** Bounded prompts for specific developer or review actions.
*   **Key Files:** [prompts/IMPLEMENTATION.md](prompts/IMPLEMENTATION.md), [prompts/LAUNCH_GATE.md](prompts/LAUNCH_GATE.md).

### [reference/](reference/)
*   **Role:** Support and Context.
*   **Content:** Theoretical models, comparison tables, and decisions.
*   **Key Files:** [reference/DECISION_TREE.md](reference/DECISION_TREE.md), [reference/GLOSSARY.md](reference/GLOSSARY.md).

---

## 3. Relationships Between Components

```mermaid
graph TD
    standards[standards/ Policy] -->|governs| playbooks[playbooks/ Execution]
    playbooks -->|defines workflows for| recipes[recipes/ Execution]
    recipes -->|requires| checklists[checklists/ Verification]
    templates[templates/ Boilerplate] -->|speeds up| playbooks
    prompts[prompts/ Prompts] -->|automates| playbooks
    reference[reference/ Support] -->|guides| standards
    metrics[metrics/ Measurement] -->|refines| standards
```
