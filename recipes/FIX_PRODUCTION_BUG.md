# Recipe: Fix Production Bug

> Step-by-step hotfixing of a live production bug.

This recipe guides you through reproducing, patching, verifying, and logging a production bug with minimal risk, complying with the [playbooks/HOTFIX.md](../playbooks/HOTFIX.md) playbook.

---

## 🛠️ Step-by-Step Execution

### Step 1: Gather Production Logs & Evidence
Retrieve the error trace, request payload, or stack trace from your observability system (e.g., Sentry, Datadog). Confirm:
*   Which endpoint is failing.
*   The exact input that triggered the bug.

### Step 2: Set Context Boundaries
Before starting your AI agent, restrict the files it is allowed to load. 
1.  Map the 1-3 files that contain the bug and its direct dependencies.
2.  Set your read budget (Max 8 files for small bugs) as defined in [standards/TOKEN_ECONOMY.md](../standards/TOKEN_ECONOMY.md).

### Step 3: Write a Failing Test (Reproduce)
Write a targeted unit or integration test that reproduces the bug before writing any code:
```bash
# Example running the new targeted test to confirm failure:
npm run test -- path/to/failed.test.js
```
The test must fail in the same manner as the production error trace.

### Step 4: Choose the Correct Model Tier
Refer to [standards/MODEL_SELECTION.md](../standards/MODEL_SELECTION.md):
*   Use a **Small/Mini model** if the bug is isolated to a single file and the fix is obvious.
*   Use a **Medium model** if the bug involves integration between 2-3 files.

### Step 5: Implement the Minimal Patch
Instruct your AI agent to fix the failing test with the smallest possible change:
```text
Fix the bug reproducing in path/to/failed.test.js. 
Do not refactor nearby code or change unrelated styling.
```

### Step 6: Verify the Patch
1.  Run the targeted test again. It must pass:
    ```bash
    npm run test -- path/to/failed.test.js
    ```
2.  Run the typechecker and production build locally to ensure no compiler regressions:
    ```bash
    npm run build
    ```

### Step 7: Perform Git Diff & Complete Hotfix Log
1.  Run a git diff check:
    ```bash
    git diff
    ```
2.  Complete the required Hotfix template and add it to your commit message or PR summary:
    ```text
    Impact: [System API returns 500 error on payment webhook]
    Root cause: [Missing null check on user metadata field]
    Fix: [Added nullish coalescing operator to metadata validation parser]
    Verification: [Ran path/to/failed.test.js successfully]
    Rollback: [git revert <commit-hash>]
    Follow-up: [None]
    ```
3.  Commit and merge the hotfix.
