# Recipe: Create AGENTS.md

> How to quickly initialize and enforce AI agent rules in your target project.

This recipe helps you copy, configure, and automate the repository-specific AI agent rules to keep your developer assistants aligned with project standards.

---

## 🛠️ Step-by-Step Execution

### Step 1: Run the Playbook Setup Script
Navigate to the root of your cloned `ai-engineering-playbook` repository and execute the installer:

*   **For Linux/macOS:**
    ```bash
    ./setup.sh
    ```
*   **For Windows PowerShell:**
    ```powershell
    .\setup.ps1
    ```

### Step 2: Define Target and Template
The script will prompt you for two inputs:
1.  **Target Directory:** Enter the path to your active code repository (e.g., `../my-product-repo`).
2.  **Template Type:** Select option **1** for general agents (`AGENTS.md`), **2** for Claude Code (`CLAUDE.md`), or **3** for Gemini CLI (`GEMINI.md`).

### Step 3: Configure the Agent Rules
Open the newly created rules file (e.g., `../my-product-repo/AGENTS.md`) and customize the following sections to match your target project:
*   Update target directories and file structures in the **Repository Guidance** section.
*   Confirm the paths to your project's linters, tests, and build commands under **Operating Principles**.

### Step 4: Inject into Agent Instructions
Point your coding assistant to read the new rules file by adding this instruction to your system prompt, system instructions, or `.cursorrules` file:
```text
Read AGENTS.md before planning or modifying code.
```

### Step 5: Automate Enforce via Pre-Commit Hooks
To guarantee that developers and agents do not commit code violating standards:
1.  Copy the pre-commit configuration template [templates/PRE_COMMIT_CONFIG.yaml](../templates/PRE_COMMIT_CONFIG.yaml) to your project root as `.pre-commit-config.yaml`.
2.  Install the pre-commit framework and hooks in your target project:
    ```bash
    pip install pre-commit
    pre-commit install
    ```
3.  All commits will now automatically run formatters, linters, and secret scans.
