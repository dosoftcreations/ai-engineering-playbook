# Recipe: Ship v1.0

> Exact execution steps to release and tag version 1.0.0.

This recipe details the exact commands and checks required to freeze, log, tag, and publish version 1.0.0 of your software, complying with [playbooks/RELEASE.md](../playbooks/RELEASE.md).

---

## 🛠️ Step-by-Step Execution

### Step 1: Confirm Release Scope & Milestones
Verify that all milestones in [AI_ENGINEERING_PLAYBOOK_MASTER_CHECKLIST.md](../AI_ENGINEERING_PLAYBOOK_MASTER_CHECKLIST.md) are marked as complete. Any unfinished items must be deferred to the next release lifecycle (v1.1.0).

### Step 2: Finalize Changelog
Generate your release changelog notes:
1.  Collect commit logs since the last tag:
    ```bash
    git log $(git describe --tags --abbrev=0)..HEAD --oneline
    ```
2.  Open [CHANGELOG.md](../CHANGELOG.md) and append the new version changes using the following format:
    ```markdown
    ## [1.0.0] - 2026-07-06
    ### Added
    - [Key feature or navigation map added]
    ### Changed
    - [Restructured standards for clarity]
    ### Fixed
    - [Bug fixes applied]
    ```

### Step 3: Run local verification suite
Run a final verification sweep to confirm no code style or compilation regressions:
```bash
npm run lint
npm run test
npm run build
```

### Step 4: Tag the Release Version
Create a signed git release tag locally:
```bash
# Tag the release:
git tag -a v1.0.0 -m "Release version 1.0.0 - Production ready"
```

### Step 5: Push Changes and Tag to GitHub
Push your local commits and tag to the remote repository:
```bash
git push origin main
git push origin v1.0.0
```

### Step 6: Create GitHub Release
1.  Navigate to your GitHub repository release panel (e.g., `https://github.com/dosoftcreations/ai-engineering-playbook/releases`).
2.  Click **Draft a new release**.
3.  Choose the tag **v1.0.0**.
4.  Paste the changelog text generated in Step 2 into the release description.
5.  Click **Publish release**.

### Step 7: Deactivate Launch Mode
Toggle environment flags to resume normal development, allowing features to be merged into the `main` branch for the next release candidate milestone.
