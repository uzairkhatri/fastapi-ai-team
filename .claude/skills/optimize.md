---
name: optimize
description: Profiles the FastAPI project for performance issues — N+1 queries, missing indexes, unbounded queries, and caching opportunities. Uses the performance-engineer agent.
---

Use the `performance-engineer` agent to audit this FastAPI project for performance issues.

$ARGUMENTS

The performance-engineer will:
1. Read all service, model, and router files
2. Identify N+1 query patterns, missing indexes, unbounded queries needing pagination, and caching opportunities
3. Prioritize findings by impact
4. Propose exact fixes with before/after code

If a specific endpoint or file is mentioned in the request, focus there first, then scan the rest of the project.
