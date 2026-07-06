# Repository Audit

> Comprehensive audit of the AI Engineering Playbook repository structure, content integrity, and organizational health.

Audit date: 2026-07-06
Repository version: v1.0.0

---

## 1. Repository overview

The repository contains 10 primary directories and 36 root-level files.

### Directory structure

| Directory | Files | Purpose | Health |
|---|---:|---|---|
| standards/ | 12 | Stable engineering rules | Good — canonical content lives here |
| playbooks/ | 20 | Repeatable workflows | Good — canonical content lives here |
| checklists/ | 9 | Operational verification | Good |
| templates/ | 8 | Reusable starting points | Good |
| prompts/ | 6 | Bounded prompt patterns | Good |
| reference/ | 5 | Glossary, patterns, comparisons | Good — some thin content |
| examples/ | 4 | Worked implementations | Good |
| case-studies/ | 5 | Real-world examples | Good |
| metrics/ | 6 | Measurement frameworks | Good |
| rfcs/ | 6 | Proposals and design docs | Good |
| docs/ai/ | 10+ | Shadow v2.0 detailed content | Needs merge or removal |
| patterns/ | 1 | Nearly empty placeholder | Needs merge into reference/ |

### Root-level files (legitimate)

These files belong at the root and have correct content:

- README.md — main entry point
- AGENTS.md — agent instructions
- CLAUDE.md — Claude-specific guidance
- GEMINI.md — Gemini-specific guidance
- CONTRIBUTING.md — contribution guidelines
- GOVERNANCE.md — project governance
- MAINTAINER_GUIDE.md — vision and maintainer guidance
- MAINTAINERS.md — maintainer list
- CODE_OF_CONDUCT.md — community standards
- CHANGELOG.md — release history
- ROADMAP.md — planned direction
- SECURITY.md — security policy
- LICENSE — MIT license

---

## 2. Critical findings: filename-content mismatches

**Severity: Critical**

Multiple root-level files have filenames that do not match their actual content. This creates confusion for both human readers and AI agents navigating the repository.

### Standards mismatches

| File (root) | Expected content | Actual content (line 1) | Severity |
|---|---|---|---|
| AI_ENGINEERING_STANDARD.md | AI Engineering Standard | "# Launch Gate Prompt" | Critical |
| CONTEXT_MANAGEMENT.md | Context Management | "# AI Engineering Standard" | Critical |
| MODEL_SELECTION.md | Model Selection | "# Architecture Prompt" | Critical |
| SECURITY_STANDARD.md | Security Standard | "# Token Economy Standard" | Critical |
| SUBAGENT_STANDARD.md | Subagent Standard | "# Model Selection Standard" | Critical |
| REVIEW_STANDARD.md | Review Standard | "# Context Management Standard" | Critical |

The root files contain an older, more detailed version of the content (with workflow diagrams, budget tables, task classification) while the standards/ files contain a newer, cleaner version. The content in the root files has been shifted — each filename holds the content that *should* be in a different file.

### Playbook mismatches

| File (root) | Expected content | Actual content (line 1) | Severity |
|---|---|---|---|
| FEATURE.md | Feature Playbook | "# Bug Fix Playbook" | Critical |
| HOTFIX.md | Hotfix Playbook | "# Release Playbook" | Critical |
| INCIDENT.md | Incident Playbook | "# Hotfix Playbook" | Critical |
| LAUNCH_MODE.md | Launch Mode Playbook | "# Feature Playbook" | Critical |
| RELEASE.md | Release Playbook | "# Launch Mode Playbook" | Critical |
| implementation.md | Implementation content | "# Incident Playbook" | Critical |

The same shifting pattern applies — each playbook file at root contains the content that belongs in a *different* playbook file.

### Prompt mismatches

| File (root) | Expected content | Actual content (line 1) | Severity |
|---|---|---|---|
| launch-gate.md | Launch Gate content | "# Implementation Prompt" | High |
| architecture.md | Architecture content | "# Audit Prompt" | High |

### Other mismatches

| File (root) | Expected content | Actual content | Severity |
|---|---|---|---|
| proposal.md | Proposal template | Old Roadmap (v0.1 alpha through v1.0) | Medium |
| bug_report.md | Bug report template | Old README (v0.1.0-alpha, 187 lines) | Medium |
| download | Download info | Agent Rules document (no .md extension) | Medium |
| README (3).md | README | Bug report issue template (YAML frontmatter) | Medium |
| README (4).md | Proposal issue template | Proposal issue template (YAML frontmatter) | Medium |
| SECURITY (1).md | Security info | PR template (checkboxes for type, verification, risk) | Medium |

---

## 3. Duplicate content

**Severity: High**

### Root vs. standards/ duplication

The root-level mismatched files contain older versions of standards that also exist (correctly named) in standards/. Both versions are valid but different in depth:

| Content topic | Root file (misnamed) | Root size | standards/ file | standards/ size |
|---|---|---:|---|---:|
| AI Engineering Standard | CONTEXT_MANAGEMENT.md | 1,714 bytes | AI_ENGINEERING_STANDARD.md | 952 bytes |
| Model Selection | SUBAGENT_STANDARD.md | 1,367 bytes | MODEL_SELECTION.md | 807 bytes |
| Token Economy | SECURITY_STANDARD.md | 1,207 bytes | TOKEN_ECONOMY.md | 598 bytes |
| Context Management | REVIEW_STANDARD.md | 824 bytes | CONTEXT_MANAGEMENT.md | 852 bytes |

The root versions include workflow diagrams, budget tables, and task classification matrices. The standards/ versions are shorter and principles-focused. A merge may recover useful content.

### Root vs. playbooks/ duplication

Root files FEATURE.md, HOTFIX.md, INCIDENT.md, LAUNCH_MODE.md, RELEASE.md, and implementation.md contain older playbook content that duplicates (with different depth) the playbooks/ files.

### Root vs. templates/ duplication

- Root PULL_REQUEST_TEMPLATE.md (1,254 bytes) duplicates templates/PULL_REQUEST_TEMPLATE.md (654 bytes).
- Root SECURITY (1).md contains a PR template that partially overlaps templates/ content.

### docs/ai/ shadow directory

The docs/ai/ directory contains a parallel structure with significantly more detailed v2.0 content:

| docs/ai/ content | Size | Main directory equivalent | Main size |
|---|---:|---|---:|
| AI_ENGINEERING_STANDARD.md | 11,642 bytes | standards/AI_ENGINEERING_STANDARD.md | 952 bytes |
| agent.md | 6,193 bytes | (no direct equivalent) | — |
| review.md | 3,207 bytes | standards/REVIEW_STANDARD.md | 613 bytes |
| release.md | 2,744 bytes | playbooks/RELEASE.md | 501 bytes |
| standards/ (subdir) | multiple | standards/ | multiple |
| playbooks/ (subdir) | multiple | playbooks/ | multiple |
| checklists/ (subdir) | multiple | checklists/ | multiple |
| prompts/ (subdir) | multiple | prompts/ | multiple |
| templates/ (subdir) | multiple | templates/ | multiple |

This creates ambiguity about which version is canonical.

---

## 4. Naming inconsistencies

**Severity: Medium**

| Issue | Examples | Impact |
|---|---|---|
| Mixed case conventions | FEATURE.md vs. implementation.md vs. launch-gate.md | Inconsistent navigation |
| Spaces in filenames | "README (3).md", "SECURITY (1).md" | Breaks command-line tools, confusing |
| No file extension | "download" file contains markdown | Not recognized as markdown |
| Mixed naming in root | UPPER_CASE for some, lowercase-hyphen for others | No clear convention |

---

## 5. Shadow directory: docs/ai/

**Severity: High**

The docs/ai/ directory mirrors the main structure:

```text
docs/ai/
├── AI_ENGINEERING_STANDARD.md    (11,642 bytes — 12x the main version)
├── README.md
├── agent.md
├── release.md
├── review.md
├── standards/
├── playbooks/
├── checklists/
├── prompts/
└── templates/
```

This creates ambiguity about which content is authoritative. The docs/ai/ versions are significantly more detailed but may not reflect the latest editorial decisions.

---

## 6. Placeholder directory: patterns/

**Severity: Low**

The patterns/ directory contains only a README.md placeholder (380 bytes) listing planned content (solo founder workflow, startup team workflow, etc.). Its intended content overlaps with reference/AGENT_PATTERNS.md. This should be merged into reference/ or expanded.

---

## 7. Missing or thin content

**Severity: Medium**

| File | Lines | Issue |
|---|---:|---|
| reference/GLOSSARY.md | 7 | Only 4 definitions |
| reference/AGENT_PATTERNS.md | 15 | Only 4 bullet-point patterns, no details |
| reference/DECISION_TREE.md | 19 | Basic 4-question flow, no actionable guides |
| reference/ANTI_PATTERNS.md | 19 | 5 anti-patterns without examples |
| reference/MODEL_COMPARISON.md | 16 | No actual comparison table or framework |

---

## 8. Prioritized recommendations

### Priority 0: Fix filename-content mismatches

1. Decide which version of each standard/playbook is canonical (root or subdirectory).
2. If the root files have valuable content not in the subdirectory versions, merge it into the subdirectory versions.
3. Remove or archive the mismatched root files.
4. Verify by checking that every file's H1 heading matches its filename.

### Priority 1: Resolve docs/ai/ shadow directory

1. Compare docs/ai/ content with main directory content line by line.
2. Merge valuable detailed content into the main directories.
3. Remove or archive docs/ai/ to eliminate ambiguity.

### Priority 2: Clean root directory

1. Move misplaced files to their correct directories or remove them.
2. Move issue templates: README (3).md → .github/ISSUE_TEMPLATE/bug_report.md, README (4).md → .github/ISSUE_TEMPLATE/proposal.md.
3. Rename the "download" file with a .md extension or remove it.
4. Ensure root contains only repository-level governance files.

### Priority 3: Merge patterns/ into reference/

1. Move patterns/README.md content into reference/AGENT_PATTERNS.md.
2. Remove the empty patterns/ directory.

### Priority 4: Expand thin reference documents

1. Expand GLOSSARY.md with terms used across the repository.
2. Expand AGENT_PATTERNS.md with concrete pattern descriptions.
3. Expand DECISION_TREE.md with actionable decision guides.
4. Expand ANTI_PATTERNS.md with examples.
5. Expand MODEL_COMPARISON.md with an actual comparison framework.

### Priority 5: Establish naming conventions

1. Adopt UPPER_SNAKE_CASE.md for all documents.
2. No spaces in filenames.
3. All files should have .md extension if they contain markdown.
4. Document the convention in CONTRIBUTING.md.

---

## 9. Root file inventory

Complete listing of every root-level file with its actual content and recommended action:

| File | Actual content | Belongs in | Action |
|---|---|---|---|
| README.md | Main entry point | Root | Keep |
| AGENTS.md | Agent instructions | Root | Keep |
| CLAUDE.md | Claude guidance | Root | Keep |
| GEMINI.md | Gemini guidance | Root | Keep |
| CONTRIBUTING.md | Contribution guidelines | Root | Keep |
| GOVERNANCE.md | Project governance | Root | Keep |
| MAINTAINER_GUIDE.md | Vision and guidance | Root | Keep |
| MAINTAINERS.md | Maintainer list | Root | Keep |
| CODE_OF_CONDUCT.md | Community standards | Root | Keep |
| CHANGELOG.md | Release history | Root | Keep |
| ROADMAP.md | Planned direction | Root | Keep |
| SECURITY.md | Security policy | Root | Keep |
| LICENSE | MIT license | Root | Keep |
| AI_ENGINEERING_PLAYBOOK_MASTER_CHECKLIST.md | Master checklist | checklists/ | Move |
| PRE_RELEASE.md | Pre-release checklist | checklists/ | Move or deduplicate |
| PULL_REQUEST_TEMPLATE.md | PR template | .github/ or templates/ | Move or deduplicate |
| AI_ENGINEERING_STANDARD.md | Launch Gate Prompt | prompts/ | Rename and move |
| CONTEXT_MANAGEMENT.md | AI Engineering Standard (old) | Archive or merge | Remove after merge |
| MODEL_SELECTION.md | Architecture Prompt | prompts/ | Rename and move |
| SECURITY_STANDARD.md | Token Economy Standard (old) | Archive or merge | Remove after merge |
| SUBAGENT_STANDARD.md | Model Selection Standard (old) | Archive or merge | Remove after merge |
| REVIEW_STANDARD.md | Context Management Standard (old) | Archive or merge | Remove after merge |
| FEATURE.md | Bug Fix Playbook (old) | Archive or merge | Remove after merge |
| HOTFIX.md | Release Playbook (old) | Archive or merge | Remove after merge |
| INCIDENT.md | Hotfix Playbook (old) | Archive or merge | Remove after merge |
| LAUNCH_MODE.md | Feature Playbook (old) | Archive or merge | Remove after merge |
| RELEASE.md | Launch Mode Playbook (old) | Archive or merge | Remove after merge |
| implementation.md | Incident Playbook (old) | Archive or merge | Remove after merge |
| launch-gate.md | Implementation Prompt | prompts/ | Rename and move |
| architecture.md | Audit Prompt | prompts/ | Rename and move |
| proposal.md | Old Roadmap | Archive | Remove |
| bug_report.md | Old README (alpha) | Archive | Remove |
| download | Agent Rules | templates/ or archive | Rename and move |
| README (3).md | Bug report issue template | .github/ISSUE_TEMPLATE/ | Move |
| README (4).md | Proposal issue template | .github/ISSUE_TEMPLATE/ | Move |
| SECURITY (1).md | PR template | .github/ or templates/ | Move |

---

## 10. Summary

| Category | Count | Severity |
|---|---:|---|
| Filename-content mismatches (standards) | 6 | Critical |
| Filename-content mismatches (playbooks) | 6 | Critical |
| Filename-content mismatches (prompts) | 2 | High |
| Filename-content mismatches (other) | 6 | Medium |
| Duplicate content pairs | 12+ | High |
| Shadow directory conflicts | 1 (docs/ai/) | High |
| Placeholder directories | 1 (patterns/) | Low |
| Naming convention violations | 6+ | Medium |
| Thin reference documents | 5 | Medium |

The canonical content in standards/, playbooks/, checklists/, templates/, prompts/, and reference/ is well-organized and follows consistent patterns. The primary issues are at the root level where mismatched, duplicated, and misnamed files create navigational confusion.

---

## Related documents

- [INFORMATION_ARCHITECTURE.md](INFORMATION_ARCHITECTURE.md) — target repository structure after cleanup
- [LEARNING_PATH.md](LEARNING_PATH.md) — guided reading order
- [CONTRIBUTING.md](CONTRIBUTING.md) — contribution expectations
- [GOVERNANCE.md](GOVERNANCE.md) — scope and decision process
- [MAINTAINER_GUIDE.md](MAINTAINER_GUIDE.md) — vision and maintainer guidance
