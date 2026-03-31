# Catalog

Complete reference for all agents and skills in fastapi-ai-team.

---

## Agents

| Agent | File | Owns | Never |
|---|---|---|---|
| `orchestrator` | `.claude/agents/orchestrator.md` | Intent → plan → delegation | Writes code |
| `backend-engineer` | `.claude/agents/backend-engineer.md` | Routes, schemas, service logic | Puts logic in routers |
| `db-engineer` | `.claude/agents/db-engineer.md` | Models, migrations, queries | Skips migrations or uses raw SQL |
| `qa-engineer` | `.claude/agents/qa-engineer.md` | Tests, test runner, failure fixes | Mocks the database |
| `pr-creator` | `.claude/agents/pr-creator.md` | Branch, commit, GitHub PR | Touches main or stages unrelated files |
| `auth-engineer` | `.claude/agents/auth-engineer.md` | JWT, OAuth2, bcrypt, route guards | Hardcodes secrets or uses sha256 |
| `code-reviewer` | `.claude/agents/code-reviewer.md` | Architecture, N+1, async issues | Modifies code — audits only |
| `migration-manager` | `.claude/agents/migration-manager.md` | Alembic history, rollback, merges | Runs migrations blind |
| `api-docs-engineer` | `.claude/agents/api-docs-engineer.md` | OpenAPI, examples, Postman export | Changes business logic |
| `security-engineer` | `.claude/agents/security-engineer.md` | OWASP Top 10, secrets, injection | Reports false positives |
| `performance-engineer` | `.claude/agents/performance-engineer.md` | N+1 queries, indexes, caching | Optimizes prematurely |

---

## Skills

| Skill | File | Agents it runs | When to use |
|---|---|---|---|
| `/orchestrate` | `.claude/skills/orchestrate.md` | Full chain | Build any new feature end-to-end |
| `/add-auth` | `.claude/skills/add-auth.md` | auth-engineer → qa-engineer → pr-creator | Add JWT auth to a project |
| `/review-pr` | `.claude/skills/review-pr.md` | code-reviewer + security-engineer | Before opening any PR |
| `/audit-security` | `.claude/skills/audit-security.md` | security-engineer | Full OWASP security scan |
| `/optimize` | `.claude/skills/optimize.md` | performance-engineer | Find N+1s, slow queries, missing indexes |
| `/generate-docs` | `.claude/skills/generate-docs.md` | api-docs-engineer | Enrich OpenAPI + export Postman collection |
| `/add-tests` | `.claude/skills/add-tests.md` | qa-engineer | Tests for existing untested endpoints |

---

## Agent chains by workflow

| Workflow | Chain |
|---|---|
| Feature end-to-end | orchestrator → backend-engineer → db-engineer → qa-engineer → pr-creator |
| Add authentication | auth-engineer → qa-engineer → pr-creator |
| Harden before release | security-engineer → code-reviewer → performance-engineer |
| New endpoint with docs | backend-engineer → api-docs-engineer → pr-creator |
| Migration fix | migration-manager → db-engineer |

---

## Planned

| Agent / Skill | Description |
|---|---|
| `celery-engineer` | Background tasks, beat scheduler, retry config |
| `websocket-engineer` | WebSocket endpoints, connection managers, broadcast |
| `deployment-engineer` | Dockerfile, docker-compose, health checks |
| `rate-limit-engineer` | slowapi integration, per-route limits, Redis backend |
| `/scaffold` | Bootstrap a new FastAPI project with full structure |
| `/add-pagination` | Add limit/offset pagination to existing endpoints |
