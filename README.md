<div align="center">

# FastAPI AI Team

**5 specialized AI agents. 1 command. Endpoint → DB → Tests → PR.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Built for Claude Code](https://img.shields.io/badge/Built%20for-Claude%20Code-5C4EE5)](https://claude.ai/code)
[![Agents](https://img.shields.io/badge/Agents-11-orange)](#the-team)
[![Skills](https://img.shields.io/badge/Skills-7-blue)](#usage)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/uzairkhatri/fastapi-ai-team/pulls)

</div>

---

You know the drill. You have a feature to ship. You spend the first hour on boilerplate — the router, the schema, the service, the model, the migration, the tests, the PR description. None of it is hard. All of it takes time.

**FastAPI AI Team eliminates that hour.**

Drop it into any FastAPI project. Describe what you want to build. A team of specialized agents — each with strict rules and real discipline — builds the whole thing and opens the PR.

---

## The pitch

**Without this:**
```
You → write router → write schema → write service → write model
    → run alembic → write tests → debug tests → open PR → write PR description
Time: 45–90 minutes of setup before you write a single line of real logic
```

**With this:**
```
/orchestrate Add a blog posts endpoint where users can create and list posts
Time: you go get coffee
```

---

## See it happen

```
$ /orchestrate Add a blog posts endpoint where users can create and list posts

[orchestrator]      scanning project structure...
[orchestrator]      found: app/routers, app/services, app/models, app/schemas
[orchestrator]      plan: backend-engineer → db-engineer → qa-engineer → pr-creator

[backend-engineer]  reading existing patterns from app/routers/users.py...
[backend-engineer]  created app/schemas/post.py       — PostCreate, PostResponse
[backend-engineer]  created app/services/post_service.py  — create_post, get_posts
[backend-engineer]  created app/routers/posts.py      — POST /posts, GET /posts
[backend-engineer]  updated app/main.py               — router registered

[db-engineer]       created app/models/post.py        — Post model, FK → users (ondelete=CASCADE)
[db-engineer]       ran alembic revision --autogenerate -m "add posts table"
[db-engineer]       migration: versions/20240327_add_posts_table.py

[qa-engineer]       created tests/test_posts.py
[qa-engineer]       running pytest tests/test_posts.py -v...
[qa-engineer]       test_create_post_returns_201 PASSED
[qa-engineer]       test_create_post_missing_fields_returns_422 PASSED
[qa-engineer]       test_create_post_user_not_found_returns_404 PASSED
[qa-engineer]       3 passed in 0.07s

[pr-creator]        branch: feat/blog-posts-endpoint
[pr-creator]        commit: feat: add blog posts endpoint with full CRUD and tests
[pr-creator]        PR opened → github.com/you/your-project/pull/42
```

---

## The team

Five agents. Each one knows exactly what it owns and what it doesn't touch.

| Agent | Owns | Hard rules |
|---|---|---|
| **orchestrator** | Intent → plan → delegation | Never writes code. Only coordinates. |
| **backend-engineer** | Routes, schemas, service logic | No business logic in routers. All I/O is async. Never duplicates existing files. |
| **db-engineer** | SQLAlchemy models, migrations, queries | SQLAlchemy 2.0 style only. Runs migration before finishing. Every FK has explicit `ondelete`. |
| **qa-engineer** | Tests, test runner, failure fixes | Real test DB — never mocks. Runs pytest and fixes failures before handing off. Tests 201, 422, 404, and edge cases. |
| **pr-creator** | Branch, commit, PR | Never touches `main`. Never stages unrelated files. Structured PR description every time. |
| **auth-engineer** | JWT auth, OAuth2, protected routes | bcrypt only. Secrets from env. `get_current_user` dependency pattern always. |
| **code-reviewer** | Architecture, async correctness, N+1, security | Read-only. Separates blockers from suggestions. Never vague. |
| **migration-manager** | Alembic history, rollbacks, conflict resolution | Never runs blind. Warns on data loss. Resolves multiple heads with merge. |
| **api-docs-engineer** | OpenAPI descriptions, examples, Postman export | Never changes logic. Realistic examples only. Covers all status codes. |
| **security-engineer** | OWASP Top 10 audit, secrets, broken auth, injection | Read-only. Classifies Critical / High / Medium / Low. No false positives. |
| **performance-engineer** | N+1 queries, missing indexes, caching, pagination | Explains the problem before the fix. Only addresses real bottlenecks. |

The orchestrator reads your codebase before planning anything. Agents follow your existing conventions — your folder layout, your naming, your base classes. They adapt to you, not the other way around.

---

## Install

```bash
git clone https://github.com/uzairkhatri/fastapi-ai-team /tmp/fastapi-ai-team
mkdir -p .claude/agents .claude/skills
cp /tmp/fastapi-ai-team/.claude/agents/* .claude/agents/
cp /tmp/fastapi-ai-team/.claude/skills/* .claude/skills/
```

Requires [Claude Code](https://claude.ai/code). That's the only dependency.

---

## Usage

### Ship a feature end-to-end

```
/orchestrate Add JWT authentication with login and register endpoints
/orchestrate Add soft delete to users with a deleted_at column
/orchestrate Add a notifications system — users get notified when someone comments on their post
/orchestrate Add rate limiting to the public endpoints
```

### Use individual agents for focused tasks

Not every task needs the full chain. Call any agent directly:

```
Use the backend-engineer agent to add a PATCH /users/{id} endpoint
Use the qa-engineer agent to write tests for the existing /posts endpoint
Use the db-engineer agent to add a composite index on (user_id, created_at)
Use the pr-creator agent to open a PR for the changes I just made
```

---

## Real workflows

**Shipping a new resource (most common)**
```
/orchestrate Add [resource] with [fields/relationships]
```
Runs the full chain: router → schema → service → model → migration → tests → PR.

**Adding auth to an existing project**
```
/orchestrate Add JWT authentication — login returns a token, protect the /posts endpoints
```

**Iterating on an existing endpoint**
```
Use the backend-engineer agent to add pagination to GET /posts — use limit and offset query params
Use the qa-engineer agent to update tests/test_posts.py to cover the new pagination params
```

---

## What it expects from your project

```
your-project/
├── app/
│   ├── main.py
│   ├── routers/        ← agents put route handlers here
│   ├── services/       ← business logic lives here
│   ├── schemas/        ← Pydantic models here
│   ├── models/         ← SQLAlchemy models here
│   └── db/
│       └── session.py  ← AsyncSession, Base, get_db
└── tests/
    └── conftest.py     ← test DB + AsyncClient fixtures
```

If your structure differs, the orchestrator reads it first and adapts. The agents are not template-runners — they read before they write.

---

## Why not just prompt Claude directly?

You can. But raw prompting has no discipline.

This system has hard rules baked into each agent's definition. The `qa-engineer` **will not** pass broken tests to `pr-creator`. The `db-engineer` **will not** skip the migration. The `backend-engineer` **will not** put logic in the router. These aren't suggestions — they're constraints the agent operates under on every run.

The result is code that follows your project's conventions, is tested before it's committed, and arrives as a reviewable PR — not a code dump in the chat window.

---

## Skills (slash commands)

| Skill | What it runs | Use it when |
|---|---|---|
| `/orchestrate` | Full agent chain | Building a new feature end-to-end |
| `/add-auth` | auth-engineer → qa-engineer → pr-creator | Adding JWT auth to a project |
| `/review-pr` | code-reviewer + security-engineer | Before opening a PR |
| `/audit-security` | security-engineer | Full OWASP security scan |
| `/optimize` | performance-engineer | Finding N+1s, slow queries, missing indexes |
| `/generate-docs` | api-docs-engineer | Enriching OpenAPI docs + Postman export |
| `/add-tests` | qa-engineer | Writing tests for existing untested endpoints |

---

## Roadmap

| | Description |
|---|---|
| 🔜 | `deployment-engineer` — Dockerfile, docker-compose, environment config |
| 🔜 | `celery-engineer` — Background tasks, task queues, beat scheduler |
| 🔜 | `websocket-engineer` — WebSocket endpoints, connection managers, broadcast |
| 🔜 | `/scaffold` — Bootstrap a new FastAPI project with full structure |
| 🔜 | `/add-pagination` — Add limit/offset or keyset pagination to existing endpoints |

---

## Contributing

Each agent is a single markdown file in `.claude/agents/`. The format is straightforward — a name, a description, tools it can use, and a system prompt with rules.

**To request a new agent:** open an issue titled `[agent request] name — what it owns and what it enforces`. The best agent requests define what the agent is *not* allowed to do as clearly as what it does.

**To submit an agent:** use `backend-engineer.md` as your template. PRs with new agents that have clear ownership boundaries and hard rules will be merged fast.

---

## License

MIT

---

<div align="center">

Made by [@uzairkhatri](https://github.com/uzairkhatri) · Built for [Claude Code](https://claude.ai/code)

If this saved you an hour, star it ⭐

</div>
