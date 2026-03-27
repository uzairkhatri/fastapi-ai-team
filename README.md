# fastapi-ai-team

**Your AI-powered FastAPI engineering team, running inside Claude Code.**

Describe a feature in plain English. The system builds the endpoint, database schema, tests, and opens a PR — automatically.

```
/orchestrate Add a blog posts endpoint where users can create and list posts
```

↓

`backend-engineer` → `db-engineer` → `qa-engineer` → `pr-creator` → **PR opened**

---

## What it does

Each agent is a specialist with strict responsibilities:

| Agent | Responsibility |
|---|---|
| `orchestrator` | Reads your codebase, decomposes the request, chains the right agents |
| `backend-engineer` | FastAPI routes, Pydantic schemas, service logic |
| `db-engineer` | SQLAlchemy 2.0 models, Alembic migrations, repository queries |
| `qa-engineer` | pytest + httpx tests (runs them before finishing) |
| `pr-creator` | Feature branch, commit, GitHub PR with structured description |

The orchestrator skips agents that aren't needed — if your feature has no schema changes, `db-engineer` is not called.

---

## Install

```bash
# Clone into your FastAPI project
git clone https://github.com/uzairkhatri/fastapi-ai-team .claude-team

# Copy agents and skills into your project
cp -r .claude-team/.claude/agents/* .claude/agents/
cp -r .claude-team/.claude/skills/* .claude/skills/
```

Or manually copy the `.claude/` folder from this repo into your FastAPI project root.

> Requires [Claude Code](https://claude.ai/code) CLI.

---

## Usage

### Build a feature end-to-end

```
/orchestrate Add a comments endpoint where authenticated users can comment on posts
```

The orchestrator will:
1. Read your existing project structure
2. Follow your existing patterns (folder layout, naming, base classes)
3. Chain the right agents in order
4. Open a PR with everything wired up

### Use individual agents directly

```
Use the backend-engineer agent to add a PATCH /users/{id} endpoint
```

```
Use the qa-engineer agent to write tests for the existing /posts endpoint
```

---

## Agent rules (what makes this different from raw prompting)

**backend-engineer** enforces:
- No business logic in routers — thin handlers only
- All functions typed, all I/O async
- Extends existing schema/service files instead of creating duplicates

**db-engineer** enforces:
- SQLAlchemy 2.0 style (`Mapped`, `mapped_column`)
- Runs `alembic revision --autogenerate` after every model change
- Foreign keys always have explicit `ondelete` behavior

**qa-engineer** enforces:
- Never mocks the database — uses a real test DB
- Tests: 201/200 success, 422 validation error, 404 not found, domain-specific edge cases
- Runs `pytest` and fixes failures before finishing

**pr-creator** enforces:
- Never commits to `main`
- Only stages files relevant to the feature
- Structured PR description with summary, changes, and test checklist

---

## Project structure expected

```
your-project/
├── app/
│   ├── main.py
│   ├── routers/
│   ├── services/
│   ├── schemas/
│   ├── models/
│   └── db/
│       └── session.py
└── tests/
    └── conftest.py
```

The agents read your project first and adapt to your existing layout. If your structure differs, they will follow it.

---

## Roadmap

- [ ] `auth-engineer` — JWT auth, OAuth2 password flow, protected routes
- [ ] `migration-manager` — Alembic migration history, rollback, conflict detection
- [ ] `api-docs-generator` — OpenAPI descriptions, example payloads, Postman collection
- [ ] `code-reviewer` — Architecture enforcement, async correctness, N+1 detection
- [ ] `/add-auth` skill — Add authentication to an existing endpoint
- [ ] `/review-pr` skill — Review open PR for FastAPI best practices

---

## Contributing

Agents are markdown files. Adding a new one is straightforward — see `.claude/agents/backend-engineer.md` as a reference.

PRs welcome. Open an issue with the `new-agent-request` label to suggest a specialist.

---

## License

MIT
