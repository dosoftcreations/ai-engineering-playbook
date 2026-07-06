# Decision Trees

Use these decision trees as operational guides when navigating AI-assisted software development tasks, model routing choices, refactoring requests, and standard expansions.

---

## 1. Should I Spawn a Subagent?

```mermaid
graph TD
    A[Is the task tiny or small? <3 files/trivial fix] -->|Yes| B[DO NOT SPAWN. Main agent handles directly]
    A -->|No| C{Can the work be split into a bounded, independent slice?}
    C -->|No| D[DO NOT SPAWN. Requires shared context/frequent coordination]
    C -->|Yes| E{Does the main agent benefit from parallel work, independent research, or parallel testing?}
    E -->|No| F[DO NOT SPAWN. Proceed sequentially]
    E -->|Yes| G{Are there fewer than 3 subagents currently running?}
    G -->|No| H[WAIT. Max subagent limit is 3. Complete and close existing ones first]
    G -->|Yes| I[SPAWN SUBAGENT. Define explicit scope, exclusions, and output formats]
```

---

## 2. Should I Use a Larger Model?

```mermaid
graph TD
    A[Is the task copy changes, variable renaming, simple CRUD, or boilerplate?] -->|Yes| B[USE SMALL/MINI MODEL. Low reasoning required]
    A -->|No| C[Is the task a standard cross-module feature or normal bug fix?] -->|Yes| D[USE MEDIUM MODEL. Good balance of cost and logic]
    C -->|No| E{Does the task involve high-security risk, auth/billing updates, data migrations, or complex system architecture?}
    E -->|No| F[USE MEDIUM MODEL. lower tiers are sufficient]
    E -->|Yes| G[USE HIGH OR EXTRA-HIGH MODEL. Reasoning required. Record rationale]
```

---

## 3. Should I Refactor?

```mermaid
graph TD
    A[Is Launch Mode active?] -->|Yes| B{Is the refactor a critical production launch blocker?}
    B -->|No| C[DO NOT REFACTOR. Cosmetic cleanups and rewrites are frozen]
    B -->|Yes| D[REFACTOR. Keep it minimal and highly targeted]
    A -->|No| E{Did the user explicitly request a refactor OR is it required to fix a bug/security flaw?}
    E -->|No| F[DO NOT REFACTOR. Keep changes incremental]
    E -->|Yes| G[REFACTOR. State the why, target files, risks, and verify changes with tests]
```

---

## 4. Should I Create a New Standard?

```mermaid
graph TD
    A[Is there a recurring engineering pattern or rule that is not documented?] -->|No| B[DO NOT CREATE. Keep standard count low]
    A -->|Yes| C{Does this apply repository-wide across multiple playbooks and templates?}
    C -->|No| D[DO NOT CREATE. Document locally inside the relevant playbook README]
    C -->|Yes| E{Is the proposed rule stable and agreed upon by the engineering team?}
    E -->|No| F[PROPOSE AS RFC. Test the concept before solidifying as standard]
    E -->|Yes| G[CREATE NEW STANDARD. Choose Screaming Snake Case, add to standards/ and update standards/README.md]
```

---

## 5. Should I Create a New Playbook?

```mermaid
graph TD
    A[Is there a repeatable operational workflow or task pattern?] -->|No| B[DO NOT CREATE. Avoid documentation bloating]
    A -->|Yes| C{Is it covered by an existing playbook feature, bug fix, launch?}
    C -->|Yes| D[DO NOT CREATE. Update the existing playbook with a new section]
    C -->|No| E{Does it require step-by-step procedures, workflows, checklists, and output templates?}
    E -->|No| F[DO NOT CREATE. Use a standard checklist instead]
    E -->|Yes| G[CREATE NEW PLAYBOOK. Save in playbooks/, update playbooks/README.md]
```
