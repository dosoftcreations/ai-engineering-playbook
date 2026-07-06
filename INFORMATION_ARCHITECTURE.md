# Information Architecture

> Target repository structure, reading order, document relationships, and navigation design for the AI Engineering Playbook.

---

## 1. Design principles

- Every document should have one clear home.
- Navigation should be possible without memorizing the structure.
- New documents should have an obvious place to go.
- Cross-references should use relative paths consistently.
- The repository should be readable both top-down (learning) and laterally (reference lookup).

---

## 2. Target directory structure

After cleanup, the repository should follow this hierarchy:

```text
.
├── README.md                          # Entry point, navigation hub
├── CONTRIBUTING.md                    # Contribution guidelines
├── GOVERNANCE.md                      # Project governance
├── MAINTAINER_GUIDE.md                # Vision and maintainer guidance
├── MAINTAINERS.md                     # Maintainer list
├── CODE_OF_CONDUCT.md                 # Community standards
├── CHANGELOG.md                       # Release history
├── ROADMAP.md                         # Planned direction
├── SECURITY.md                        # Security policy
├── LICENSE                            # MIT license
├── AGENTS.md                          # Agent instructions
├── CLAUDE.md                          # Claude-specific guidance
├── GEMINI.md                          # Gemini-specific guidance
├── REPOSITORY_AUDIT.md                # Audit findings
├── INFORMATION_ARCHITECTURE.md        # This document
├── LEARNING_PATH.md                   # Guided reading order
├── CURRICULUM.md                      # Leveled learning structure
│
├── standards/                         # Stable engineering rules
│   ├── README.md
│   ├── AI_ENGINEERING_STANDARD.md     # Core operating standard
│   ├── MODEL_SELECTION.md             # Model routing guidelines
│   ├── TOKEN_ECONOMY.md               # Efficient AI usage
│   ├── CONTEXT_MANAGEMENT.md          # Working context discipline
│   ├── SUBAGENT_STANDARD.md           # When and how to use subagents
│   ├── REVIEW_STANDARD.md             # Review process and format
│   ├── SECURITY_STANDARD.md           # Security baseline
│   ├── GIT_STANDARD.md                # Commit and diff discipline
│   ├── REASONING_POLICY.md            # Reasoning approach
│   ├── TOOL_USAGE_STANDARD.md         # Tool selection and boundaries
│   └── MCP_STANDARD.md               # MCP tool discipline
│
├── playbooks/                         # Repeatable workflows
│   ├── README.md
│   ├── FEATURE.md                     # Feature development
│   ├── BUG_FIX.md                     # Defect investigation and fix
│   ├── REFACTOR.md                    # Focused refactoring
│   ├── LAUNCH_MODE.md                 # Pre-launch discipline
│   ├── RELEASE.md                     # Planned release workflow
│   ├── HOTFIX.md                      # Emergency production fix
│   ├── INCIDENT.md                    # Incident response
│   ├── ROLLBACK.md                    # Rollback procedure
│   ├── NEW_PROJECT.md                 # Project setup
│   ├── CODE_REVIEW.md                 # Review workflow
│   ├── PLANNING.md                    # Planning workflow
│   ├── IMPLEMENTATION.md              # Implementation workflow
│   ├── REVIEW.md                      # General review workflow
│   ├── SECURITY_AUDIT.md              # Security audit workflow
│   ├── PERFORMANCE_REVIEW.md          # Performance review workflow
│   ├── MONOREPO.md                    # Monorepo considerations
│   ├── MICROSERVICES.md               # Microservices considerations
│   ├── DATABASE_MIGRATION.md          # Migration workflow
│   └── API_DESIGN.md                  # API design workflow
│
├── checklists/                        # Operational verification
│   ├── README.md
│   ├── PRE_COMMIT.md
│   ├── PRE_PR.md
│   ├── PRE_RELEASE.md
│   ├── DEPLOYMENT.md
│   ├── PRODUCTION.md
│   ├── SECURITY.md
│   ├── OBSERVABILITY.md
│   └── BACKUP.md
│
├── templates/                         # Reusable starting points
│   ├── README.md
│   ├── AGENTS.md
│   ├── CLAUDE.md
│   ├── GEMINI.md
│   ├── REVIEW.md
│   ├── ADR.md
│   ├── ISSUE_TEMPLATE.md
│   └── PULL_REQUEST_TEMPLATE.md
│
├── prompts/                           # Bounded prompt patterns
│   ├── README.md
│   ├── IMPLEMENTATION.md
│   ├── ARCHITECTURE.md
│   ├── LAUNCH_GATE.md
│   ├── REVIEW.md
│   └── DEBUGGING.md
│
├── reference/                         # Background knowledge
│   ├── GLOSSARY.md
│   ├── AGENT_PATTERNS.md
│   ├── ANTI_PATTERNS.md
│   ├── DECISION_TREE.md
│   └── MODEL_COMPARISON.md
│
├── examples/                          # Worked implementations
│   ├── README.md
│   ├── MONOREPO.md
│   ├── NEXTJS.md
│   └── SAAS.md
│
├── case-studies/                      # Real-world examples
│   ├── README.md
│   ├── SOLO_DEVELOPER.md
│   ├── STARTUP_TEAM.md
│   ├── AGENCY_WORKFLOW.md
│   └── AI_FIRST_COMPANY.md
│
├── metrics/                           # Measurement frameworks
│   ├── README.md
│   ├── AI_ROI.md
│   ├── TOKEN_EFFICIENCY.md
│   ├── REVIEW_QUALITY.md
│   ├── MANUAL_REWORK.md
│   └── MODEL_USAGE.md
│
└── rfcs/                              # Proposals and design docs
    ├── README.md
    ├── RFC-0001-token-economy.md
    ├── RFC-0002-model-routing.md
    ├── RFC-0003-subagent-policy.md
    ├── RFC-0004-launch-mode.md
    └── RFC-0005-context-budget.md
```

### Directories to remove after cleanup

| Directory | Reason | Action |
|---|---|---|
| docs/ai/ | Shadow directory causing content ambiguity | Merge valuable content into main directories, then remove |
| patterns/ | Nearly empty, overlaps with reference/ | Merge README content into reference/AGENT_PATTERNS.md, then remove |

### Root files to remove after cleanup

All mismatched root files should be removed after their content is audited and merged where appropriate. See [REPOSITORY_AUDIT.md](REPOSITORY_AUDIT.md) for the complete inventory.

---

## 3. Directory responsibilities

Each directory has a single, clear responsibility:

| Directory | Responsibility | Content type | Audience |
|---|---|---|---|
| Root | Repository governance, entry points | Meta-docs, config | Everyone |
| standards/ | Engineering rules and policies | Normative ("must" / "should") | Engineers, agents |
| playbooks/ | Step-by-step operational workflows | Procedural ("how to") | Engineers, agents |
| checklists/ | Quick verification before actions | Verification ("check before") | Engineers |
| templates/ | Copy-and-use starting points | Scaffolding | Engineers |
| prompts/ | Bounded prompt patterns | Reusable instructions | Engineers, agents |
| reference/ | Background knowledge, glossary | Informational ("what is") | Everyone |
| examples/ | Worked implementations | Demonstration | Engineers |
| case-studies/ | Real-world experience | Narrative | Decision makers |
| metrics/ | Measurement frameworks | Analytical | Leads, managers |
| rfcs/ | Proposals for change | Design docs | Contributors |

### Placement rules

When adding a new document, use this decision process:

1. Does it define a rule or policy? → standards/
2. Does it describe how to do a task? → playbooks/
3. Is it a quick verification list? → checklists/
4. Is it a copy-and-use starting point? → templates/
5. Is it a reusable prompt? → prompts/
6. Does it explain a concept or term? → reference/
7. Does it show a worked example? → examples/
8. Does it describe a real project experience? → case-studies/
9. Does it define a measurement? → metrics/
10. Does it propose a change? → rfcs/

---

## 4. Document relationships

Documents reference each other in predictable ways:

```text
standards/  ←── defines rules for ──→ playbooks/
    │                                    │
    │                                    ↓
    │                              checklists/
    │                                    │
    ↓                                    ↓
templates/ ←── provides scaffolding ──→ prompts/
    │
    ↓
reference/ ←── explains concepts used in all of the above
```

### Cross-reference patterns

| From | To | Relationship |
|---|---|---|
| standards/ | playbooks/ | "Apply this standard using this playbook" |
| playbooks/ | checklists/ | "Verify this step using this checklist" |
| playbooks/ | templates/ | "Start from this template" |
| standards/ | reference/ | "See glossary for terminology" |
| rfcs/ | standards/ | "This RFC proposes changes to this standard" |
| case-studies/ | playbooks/ | "This case study followed this playbook" |
| metrics/ | standards/ | "This metric measures compliance with this standard" |
| examples/ | playbooks/ | "This example demonstrates this playbook" |

---

## 5. Reading order

### For new readers

```text
README.md
  ↓
MAINTAINER_GUIDE.md (core philosophy)
  ↓
standards/AI_ENGINEERING_STANDARD.md
  ↓
standards/MODEL_SELECTION.md
  ↓
standards/TOKEN_ECONOMY.md
  ↓
standards/CONTEXT_MANAGEMENT.md
  ↓
playbooks/FEATURE.md (first practical workflow)
  ↓
checklists/PRE_PR.md (first verification step)
  ↓
templates/AGENTS.md (first template)
```

### For specific tasks

| I need to... | Start with | Then read |
|---|---|---|
| Set up a new project | [playbooks/NEW_PROJECT.md](playbooks/NEW_PROJECT.md) | [templates/AGENTS.md](templates/AGENTS.md) |
| Build a feature | [playbooks/FEATURE.md](playbooks/FEATURE.md) | [checklists/PRE_COMMIT.md](checklists/PRE_COMMIT.md) |
| Fix a bug | [playbooks/BUG_FIX.md](playbooks/BUG_FIX.md) | [checklists/PRE_PR.md](checklists/PRE_PR.md) |
| Prepare for launch | [playbooks/LAUNCH_MODE.md](playbooks/LAUNCH_MODE.md) | [checklists/PRE_RELEASE.md](checklists/PRE_RELEASE.md) |
| Handle an incident | [playbooks/INCIDENT.md](playbooks/INCIDENT.md) | [playbooks/HOTFIX.md](playbooks/HOTFIX.md) |
| Review a PR | [playbooks/CODE_REVIEW.md](playbooks/CODE_REVIEW.md) | [standards/REVIEW_STANDARD.md](standards/REVIEW_STANDARD.md) |
| Choose a model | [standards/MODEL_SELECTION.md](standards/MODEL_SELECTION.md) | [reference/MODEL_COMPARISON.md](reference/MODEL_COMPARISON.md) |
| Understand subagents | [standards/SUBAGENT_STANDARD.md](standards/SUBAGENT_STANDARD.md) | [reference/AGENT_PATTERNS.md](reference/AGENT_PATTERNS.md) |
| Audit security | [playbooks/SECURITY_AUDIT.md](playbooks/SECURITY_AUDIT.md) | [checklists/SECURITY.md](checklists/SECURITY.md) |

---

## 6. Navigation flow

Every directory has a README.md that serves as its index. Navigation follows a hub-and-spoke pattern:

```text
                    README.md (root hub)
                   /    |    \
                  /     |     \
          standards/  playbooks/  checklists/
          README.md   README.md   README.md
              |           |           |
          (docs)      (docs)      (docs)
```

### Navigation rules

1. Every directory README lists all documents in that directory with one-line descriptions.
2. Cross-directory links use relative paths (e.g., `../standards/MODEL_SELECTION.md`).
3. The root README links to every directory README.
4. [LEARNING_PATH.md](LEARNING_PATH.md) provides a guided sequential path through the repository.
5. [CURRICULUM.md](CURRICULUM.md) provides a leveled structure for progressive learning.

---

## 7. Naming conventions

| Element | Convention | Example |
|---|---|---|
| Standard documents | UPPER_SNAKE_CASE.md | AI_ENGINEERING_STANDARD.md |
| Playbook documents | UPPER_SNAKE_CASE.md | BUG_FIX.md |
| RFC documents | RFC-NNNN-slug.md | RFC-0001-token-economy.md |
| Directory names | lowercase-hyphen | case-studies/ |
| Directory READMEs | README.md | README.md |
| Root governance files | UPPER_SNAKE_CASE.md | CONTRIBUTING.md |
| License file | LICENSE (no extension) | LICENSE |

### Rules

- No spaces in filenames.
- All markdown files use the .md extension.
- Filenames match the document's H1 heading (e.g., `BUG_FIX.md` contains `# Bug Fix Playbook`).

---

## 8. Scalability considerations

### Adding new content types

If a new content type emerges that does not fit any existing directory:

1. Check if it fits as a subcategory of an existing directory.
2. If not, propose it as an RFC before creating a new top-level directory.
3. New directories should follow the same pattern: README.md index, UPPER_SNAKE_CASE documents.

### Growing directories

If a directory exceeds 20 documents:

1. Consider grouping related documents into subdirectories.
2. Update the directory README to reflect the grouping.
3. Maintain the same naming conventions within subdirectories.

### Versioning

Documents are versioned through the repository's Git history and [CHANGELOG.md](CHANGELOG.md). Individual documents should not carry version numbers in their filenames.

---

## Related documents

- [REPOSITORY_AUDIT.md](REPOSITORY_AUDIT.md) — current state findings
- [LEARNING_PATH.md](LEARNING_PATH.md) — guided reading order
- [CURRICULUM.md](CURRICULUM.md) — leveled learning structure
- [CONTRIBUTING.md](CONTRIBUTING.md) — contribution expectations
- [GOVERNANCE.md](GOVERNANCE.md) — project governance
- [MAINTAINER_GUIDE.md](MAINTAINER_GUIDE.md) — vision and philosophy
