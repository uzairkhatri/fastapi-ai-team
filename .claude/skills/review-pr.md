---
name: review-pr
description: Reviews staged or recently changed code using the code-reviewer and security-engineer agents. Produces a prioritized list of blockers and suggestions before a PR is opened.
---

Use the `code-reviewer` agent to review the current changes in this project.

$ARGUMENTS

The code-reviewer will:
1. Read all recently modified files (use `git diff --name-only` to find them)
2. Check for architecture violations, async issues, N+1 queries, and missing tests
3. Produce a report separated into Blockers and Suggestions

After code-reviewer finishes, use the `security-engineer` agent to audit the same changed files for security issues.

Present the combined output as a single review report. Blockers from either agent must be resolved before the PR is opened.
