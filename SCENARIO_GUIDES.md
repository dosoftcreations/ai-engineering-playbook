# Scenario Guides

> **Document Responsibility:** This file is the task-oriented navigation index. Its sole purpose is to map common, real-world developer problems (e.g., hotfixing a bug, launching a SaaS, running a database migration) directly to the relevant files, playbooks, and checklists without duplicating content.

---

## 🛠️ I'm...

### ...Starting a New Project
*   **Goal:** Set up a new repository with proper AI rules, formatters, and issue controls.
*   **What to do:**
    1. Run the rules installer script: [recipes/CREATE_AGENTS_MD.md](recipes/CREATE_AGENTS_MD.md).
    2. Review standard project organization: [playbooks/NEW_PROJECT.md](playbooks/NEW_PROJECT.md).
    3. Copy and run the pre-commit configuration: [templates/PRE_COMMIT_CONFIG.yaml](templates/PRE_COMMIT_CONFIG.yaml).

### ...Fixing a Production Bug
*   **Goal:** Patch a live bug quickly and verify the fix without introducing regressions.
*   **What to do:**
    1. Follow the step-by-step hotfix recipe: [recipes/FIX_PRODUCTION_BUG.md](recipes/FIX_PRODUCTION_BUG.md).
    2. Check the hotfix workflow rules: [playbooks/HOTFIX.md](playbooks/HOTFIX.md).
    3. Double check the pre-commit checklist: [checklists/PRE_COMMIT.md](checklists/PRE_COMMIT.md).

### ...Preparing a Launch
*   **Goal:** Lock feature development, clear blockers, and verify production readiness.
*   **What to do:**
    1. Walk through the launch recipe: [recipes/LAUNCH_SAAS.md](recipes/LAUNCH_SAAS.md).
    2. Verify launch mode blockers: [playbooks/LAUNCH_MODE.md](playbooks/LAUNCH_MODE.md).
    3. Run the production readiness verification: [checklists/PRODUCTION.md](checklists/PRODUCTION.md).

### ...Performing a Security Review
*   **Goal:** Hard check input validations, authentication scopes, rate limits, and credentials.
*   **What to do:**
    1. Run the audit prompt tool: [prompts/AUDIT.md](prompts/AUDIT.md).
    2. Walk through the security playbook: [playbooks/SECURITY_AUDIT.md](playbooks/SECURITY_AUDIT.md).
    3. Go through the security review list: [checklists/SECURITY.md](checklists/SECURITY.md) & [standards/SECURITY_STANDARD.md](standards/SECURITY_STANDARD.md).

### ...Creating AGENTS.md
*   **Goal:** Initialize repository-specific instructions so AI coding assistants align with your conventions.
*   **What to do:**
    1. Read the rule creation recipe: [recipes/CREATE_AGENTS_MD.md](recipes/CREATE_AGENTS_MD.md).
    2. Reference the base instruction template: [templates/AGENTS.md](templates/AGENTS.md).

### ...Choosing an AI Model
*   **Goal:** Route tasks to the most cost-efficient model tier.
*   **What to do:**
    1. Consult the model selection standard: [standards/MODEL_SELECTION.md](standards/MODEL_SELECTION.md).
    2. Review the routing comparison table: [reference/MODEL_COMPARISON.md](reference/MODEL_COMPARISON.md).
    3. Check the model routing decision flowchart: [reference/DECISION_TREE.md#2-should-i-use-a-larger-model](reference/DECISION_TREE.md#2-should-i-use-a-larger-model).

### ...Setting up a Multi-Agent Workflow
*   **Goal:** Coordinate multiple subagents to solve complex, independent tasks in parallel.
*   **What to do:**
    1. Verify subagents budgets and stop rules: [standards/SUBAGENT_STANDARD.md](standards/SUBAGENT_STANDARD.md).
    2. Check the subagent decision flowchart: [reference/DECISION_TREE.md#1-should-i-spawn-a-subagent](reference/DECISION_TREE.md#1-should-i-spawn-a-subagent).
    3. Choose a multi-agent workflow pattern: [reference/AGENT_PATTERNS.md](reference/AGENT_PATTERNS.md).
