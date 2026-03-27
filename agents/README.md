# Agents

11 specialized agents, each with defined ownership and hard rules.

| Agent | Owns | Hard Rules |
|---|---|---|
| [orchestrator](../claude/agents/orchestrator.md) | Intent → plan → delegation | Never writes code. Only coordinates. |
| [backend-engineer](../claude/agents/backend-engineer.md) | Routes, Pydantic schemas, service logic | No business logic in routers. All I/O async. |
| [db-engineer](../claude/agents/db-engineer.md) | SQLAlchemy 2.0 models, Alembic migrations | Runs migration every time. Every FK has `ondelete`. |
| [qa-engineer](../claude/agents/qa-engineer.md) | pytest + httpx tests, runs them, fixes failures | Real test DB only. Fixes failures before handoff. |
| [pr-creator](../claude/agents/pr-creator.md) | Branch, commit, GitHub PR | Never touches `main`. Structured PR every time. |
| [auth-engineer](../claude/agents/auth-engineer.md) | JWT, OAuth2, bcrypt, protected routes | bcrypt only. Secrets from env. Never returns hashed password. |
| [code-reviewer](../claude/agents/code-reviewer.md) | Architecture, N+1, async correctness | Read-only. Blockers vs suggestions. Never vague. |
| [migration-manager](../claude/agents/migration-manager.md) | Alembic history, rollback, conflict resolution | Never runs blind. Warns on data loss. |
| [api-docs-engineer](../claude/agents/api-docs-engineer.md) | OpenAPI descriptions, examples, Postman export | Never changes logic. Realistic examples only. |
| [security-engineer](../claude/agents/security-engineer.md) | OWASP Top 10, secrets, broken auth, injection | Read-only. Critical/High/Medium/Low classification. |
| [performance-engineer](../claude/agents/performance-engineer.md) | N+1 queries, indexes, caching, pagination | Explains problem before fix. Real bottlenecks only. |

→ Back to [main README](../README.md)
