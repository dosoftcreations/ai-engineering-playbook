# Anti-Patterns

> Common habits and workflows that reduce the quality, efficiency, and safety of AI-assisted software development.

Understanding these anti-patterns helps developers and AI orchestrators avoid context pollution, runaway token costs, and code degradation.

---

## 1. Context Explosion

### Symptoms
*   Model responses become slow, repetitive, or hallucination-heavy.
*   The model forgets previously established guidelines or changes rules mid-workflow.
*   Token costs spike dramatically for small query changes.

### Causes
*   Loading large log files, lockfiles, or entire generated packages into the active model context.
*   Refusing to close completed subagents or running long conversational threads.
*   Including historical code or unrelated modules in context.

### Consequences
*   Reasoning degradation and incorrect code syntax.
*   Wasted developer review time and high API costs.

### Recommended Solution
*   Follow the read-order priority in [standards/CONTEXT_MANAGEMENT.md](../standards/CONTEXT_MANAGEMENT.md).
*   Use target symbol lookup (grep) rather than reading entire source files.
*   Periodically clear chat histories or start new threads, bringing forward only a concise working summary.

---

## 2. Agent Spam

### Symptoms
*   Running 3+ subagents in parallel on overlapping directory scopes.
*   Subagents overwriting or reverting each other's code modifications.
*   Main agent spends more time resolving merge collisions than writing code.

### Causes
*   Spawning subagents "just in case" without a clear boundary.
*   Using subagents for trivial tasks (e.g., variable renaming, single imports).

### Consequences
*   Wasted token costs and Git merge hell.
*   Loss of orchestrator control over the exact changes being introduced.

### Recommended Solution
*   Follow the subagent limits table in [standards/SUBAGENT_STANDARD.md](../standards/SUBAGENT_STANDARD.md).
*   Tiny and small tasks must run with **0** subagents.
*   Give each spawned subagent an explicit, non-overlapping directory boundary.

---

## 3. Launch Refactoring

### Symptoms
*   Pull requests during release candidates or launch freezes contain hundreds of line additions of styling changes or code cleanups.
*   Unrelated code changes introduce regression bugs right before deployment.

### Causes
*   Developers or agents attempting to clean up nearby code "while I am here" during a critical bug fix.
*   Ignoring active Launch Mode rules.

### Consequences
*   Delayed releases and production instability.
*   High cognitive load for PR reviewers during a time-sensitive release window.

### Recommended Solution
*   Enforce a strict freeze on non-essential changes during Launch Mode (see [playbooks/LAUNCH_MODE.md](../playbooks/LAUNCH_MODE.md)).
*   Ban all cosmetic cleanups, style changes, or database schema additions.
*   Defer refactoring to dedicated sprint tickets.

---

## 4. Infinite Retry Loop

### Symptoms
*   The same build, test, or deploy command is run 4+ times in a row with identical failures.
*   The AI agent attempts minor syntax adjustments repeatedly without testing its underlying assumptions.

### Causes
*   Lack of checking environment variables, database connection state, or compiler types.
*   Blind confidence in syntax generation without analyzing error output.

### Consequences
*   Runaway API token costs.
*   Wasted time and developer frustration.

### Recommended Solution
*   Enforce a hard retry budget of **2** attempts (see [standards/TOKEN_ECONOMY.md](../standards/TOKEN_ECONOMY.md)).
*   If a tool command fails twice, stop, write down your assumptions, inspect environment states, and seek human clarification if needed.

---

## 5. Read Entire Repository

### Symptoms
*   A simple bug fix in a single component takes 5+ minutes to start.
*   Token counts exceed 100k tokens on the very first agent prompt.

### Causes
*   AI agents running recursively broad file search patterns (e.g., `find .` or reading all files in a folder).
*   Orchestrator failing to bound the allowed workspace.

### Consequences
*   Context bloat and immediate 429 quota exhaustion.
*   Inefficient exploration pathing.

### Recommended Solution
*   Instruct agents using explicit target boundaries: *"You are only allowed to read files under path/to/module"*.
*   Start with `README.md` indices to find specific entry points before searching.

---

## 6. Prompt Over-Engineering

### Symptoms
*   Agent configurations contain pages of complex, pseudo-code instructions that attempt to dictate every single syntax character.
*   The agent ignores instructions because the prompt size is too large (instruction diluting).

### Causes
*   Treating prompting as a replacement for codebase architectural patterns.
*   Writing overly defensive prompts to fix minor, one-off model mistakes.

### Consequences
*   Unmaintainable instruction rules that quickly become outdated.
*   High baseline token costs for every request.

### Recommended Solution
*   Keep prompts minimal, declarative, and focused.
*   Use codebase patterns (TypeScript types, linter configurations, and folder rules) to enforce code structure naturally rather than using text-heavy prompts.

---

## 7. Tool Loop

### Symptoms
*   Agent repeatedly calls `list_dir` or runs `grep_search` on identical directories without making progress.
*   The agent is stuck in an endless loop of searching for the same files.

### Causes
*   Vague search terms or wrong folder pathing assumptions.
*   Lack of a clear hypothesis when investigating.

### Consequences
*   High API costs and zero progress.

### Recommended Solution
*   If a search yields no results twice, stop and review the directory structure manually.
*   Formulate a specific hypothesis (e.g., *"The database config should live under configs/"*) before calling search tools.
