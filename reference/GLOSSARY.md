# Glossary

This document defines the key terms and concepts used across the AI Engineering Playbook repository.

---

*   **Agent (Main Agent / Orchestrator):** The primary AI assistant interacting with the developer or workspace. Responsible for understanding requirements, planning the implementation path, organizing the workflow, and reviewing final outputs.
*   **Subagent:** A temporary, autonomous AI assistant spawned by the main agent to perform a highly bounded, independent task (e.g., writing unit tests for a specific module, researching a bug, or checking configurations).
*   **Context Budget:** The strict limit on the number of files, lines of code, logs, and documentation loaded into the active model context at any one time. Managing this prevents context pollution, model confusion, and runaway costs.
*   **Token Economy:** The resource management framework aimed at maximizing high-quality, production-ready engineering output per token spent. It governs routing decisions, retry budgets, and file read budgets.
*   **Launch Mode:** A disciplined release-candidate state activated when a product is close to deployment. It imposes a feature freeze, bans cosmetic refactoring, and prioritizes stability, security, and rollback readiness.
*   **Verification:** The collection of automated tests (unit, integration), build checks, linters, typechecks, or manual smoke tests used to confirm a code change functions as intended.
*   **Review Evidence:** Structured logs, test reports, screenshots, or command outputs showing that a modification meets all acceptance and safety standards prior to merging a pull request.
*   **Model Routing:** The practice of selecting the cheapest, lowest-capability model tier (e.g., Small/Mini vs. Extra-High Reasoning) that can reliably solve a specific task type.
*   **Screaming Snake Case:** The naming standard (`UPPER_CASE.md`) used for files and folders across this repository to maintain structural consistency.
*   **Incident Priorities:** The hierarchy of values (Protect Users > Protect Data > Restore Service) followed during a live production outage.
