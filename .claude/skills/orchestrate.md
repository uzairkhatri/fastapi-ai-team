---
name: orchestrate
description: End-to-end feature builder. Describe a feature in plain English and the system will build the FastAPI endpoint, database schema, tests, and open a PR automatically.
---

Use the `orchestrator` agent to fulfill this request: $ARGUMENTS

The orchestrator will:
1. Read the existing codebase to understand project structure
2. Decompose the request into the right sequence of agents
3. Run: backend-engineer → db-engineer (if needed) → qa-engineer → pr-creator
4. Open a PR with everything wired up

Do not ask clarifying questions unless the request is genuinely ambiguous. Make reasonable assumptions and proceed.
