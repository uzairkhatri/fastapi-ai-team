<div align="center">

```
███████╗ █████╗ ███████╗████████╗ █████╗ ██████╗ ██╗      █████╗ ██╗
██╔════╝██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║     ██╔══██╗██║
█████╗  ███████║███████╗   ██║   ███████║██████╔╝██║     ███████║██║
██╔══╝  ██╔══██║╚════██║   ██║   ██╔══██║██╔═══╝ ██║     ██╔══██║██║
██║     ██║  ██║███████║   ██║   ██║  ██║██║     ██║     ██║  ██║██║
╚═╝     ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝  ╚═╝╚═╝

          █████╗ ██╗    ████████╗███████╗ █████╗ ███╗   ███╗
         ██╔══██╗██║    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
         ███████║██║       ██║   █████╗  ███████║██╔████╔██║
         ██╔══██║██║       ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
         ██║  ██║██║       ██║   ███████╗██║  ██║██║ ╚═╝ ██║
         ╚═╝  ╚═╝╚═╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
```

### Your AI-powered FastAPI engineering team — inside Claude Code and Cursor

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-supported-5C4EE5?logo=anthropic)](https://claude.ai/code)
[![Cursor](https://img.shields.io/badge/Cursor-supported-black?logo=cursor)](https://cursor.sh)
[![Agents](https://img.shields.io/badge/Agents-11-orange)](#the-team)
[![Skills](https://img.shields.io/badge/Skills-7-blue)](#skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml)

</div>

---

<div align="center">

```
You type one sentence.

    /orchestrate Add a blog posts endpoint where users can create and list posts

The team takes over.

  ┌─────────────────────────────────────────────────────────────────┐
  │                                                                 │
  │   orchestrator  ──▶  backend-engineer  ──▶  db-engineer        │
  │                                                  │              │
  │   pr-creator  ◀──  qa-engineer  ◀───────────────┘              │
  │       │                                                         │
  │       ▼                                                         │
  │   PR opened. Endpoint + migration + tests. Ready to review.     │
  │                                                                 │
  └─────────────────────────────────────────────────────────────────┘
```

</div>

---

## Install

**Claude Code**
```bash
bash <(curl -s https://raw.githubusercontent.com/uzairkhatri/fastapi-ai-team/main/scripts/install.sh)
```

**Cursor**
```bash
bash <(curl -s https://raw.githubusercontent.com/uzairkhatri/fastapi-ai-team/main/scripts/install.sh) --cursor
```

---

## See it run

```
/orchestrate Add a comments endpoint — users can comment on posts
```

```
[orchestrator]        reading project structure...
[orchestrator]        found: routers, services, models, schemas, tests
[orchestrator]        plan: backend-engineer → db-engineer → qa-engineer → pr-creator

[backend-engineer]    reading app/routers/posts.py for existing patterns...
[backend-engineer]    created app/schemas/comment.py
[backend-engineer]    created app/services/comment_service.py
[backend-engineer]    created app/routers/comments.py
[backend-engineer]    updated app/main.py

[db-engineer]         created app/models/comment.py    FK → posts (CASCADE), FK → users (CASCADE)
[db-engineer]         alembic revision --autogenerate -m "add comments table" ✓

[qa-engineer]         created tests/test_comments.py
[qa-engineer]         pytest tests/test_comments.py -v
[qa-engineer]         ✓ test_create_comment_returns_201
[qa-engineer]         ✓ test_create_comment_unauthenticated_returns_401
[qa-engineer]         ✓ test_create_comment_post_not_found_returns_404
[qa-engineer]         ✓ test_list_comments_returns_200
[qa-engineer]         4 passed in 0.09s

[pr-creator]          feat/comments-endpoint
[pr-creator]          PR opened → github.com/you/your-project/pull/17 ✓
```

---

## The team

11 agents. Each one knows exactly what it owns and what it doesn't touch.

```
┌──────────────────────┬────────────────────────────────────┬────────────────────────────────────────┐
│ Agent                │ Owns                               │ Never                                  │
├──────────────────────┼────────────────────────────────────┼────────────────────────────────────────┤
│ orchestrator         │ Intent → plan → delegation         │ Writes code                            │
│ backend-engineer     │ Routes, schemas, service logic     │ Puts logic in routers                  │
│ db-engineer          │ Models, migrations, queries        │ Skips migrations or uses raw SQL       │
│ qa-engineer          │ Tests, test runner, failure fixes  │ Mocks the database                     │
│ pr-creator           │ Branch, commit, GitHub PR          │ Touches main or stages unrelated files │
│ auth-engineer        │ JWT, OAuth2, bcrypt, route guards  │ Hardcodes secrets or uses sha256       │
│ code-reviewer        │ Architecture, N+1, async issues    │ Modifies code — audits only            │
│ migration-manager    │ Alembic history, rollback, merges  │ Runs migrations blind                  │
│ api-docs-engineer    │ OpenAPI, examples, Postman export  │ Changes business logic                 │
│ security-engineer    │ OWASP Top 10, secrets, injection   │ Reports false positives                │
│ performance-engineer │ N+1 queries, indexes, caching      │ Optimizes prematurely                  │
└──────────────────────┴────────────────────────────────────┴────────────────────────────────────────┘
```

→ [Full agent reference](agents/README.md)

---

## Skills

7 slash commands that chain agents into complete workflows.

```
┌──────────────────┬────────────────────────────────────┬────────────────────────────────────────┐
│ Skill            │ Agents it runs                     │ When to use                            │
├──────────────────┼────────────────────────────────────┼────────────────────────────────────────┤
│ /orchestrate     │ Full chain                         │ Build any new feature end-to-end       │
│ /add-auth        │ auth-engineer → qa → pr-creator    │ Add JWT auth to a project              │
│ /review-pr       │ code-reviewer + security-engineer  │ Before opening any PR                  │
│ /audit-security  │ security-engineer                  │ Full OWASP security scan               │
│ /optimize        │ performance-engineer               │ Find N+1s, slow queries, indexes       │
│ /generate-docs   │ api-docs-engineer                  │ Enrich OpenAPI + export Postman        │
│ /add-tests       │ qa-engineer                        │ Tests for existing untested endpoints  │
└──────────────────┴────────────────────────────────────┴────────────────────────────────────────┘
```

→ [Full skill reference](skills/README.md)

---

## Workflows

**Ship a new feature**
```
/orchestrate Add a [resource] with [fields and relationships]
/orchestrate Add a follow system — users can follow each other
/orchestrate Add soft delete to posts with a deleted_at column
/orchestrate Add a Stripe webhook endpoint for payment events
```

**Secure a project**
```
/add-auth
/audit-security
```

**Before every PR**
```
/review-pr
```

**Performance pass**
```
/optimize
```

→ [See full examples](examples/)

---

## What it expects

```
your-project/
├── app/
│   ├── main.py
│   ├── routers/
│   ├── services/
│   ├── schemas/
│   ├── models/
│   └── db/session.py     ← AsyncSession, Base, get_db
└── tests/
    └── conftest.py        ← test DB + AsyncClient fixtures
```

Agents read your structure first and adapt to it.

---

## Why not just prompt Claude?

Raw prompting gives you code. This gives you **disciplined code**.

Every agent runs under hard constraints — not guidelines. The `qa-engineer` runs `pytest` and fixes failures before handing off. The `security-engineer` classifies every finding as Critical / High / Medium / Low and never touches your code. The `orchestrator` reads your entire codebase before planning anything, so agents follow your patterns, not a generic template.

The result is a reviewable PR — not a code dump in the chat window.

---

## Roadmap

| Agent / Skill | Description |
|---|---|
| `celery-engineer` | Background tasks, beat scheduler, retry config |
| `websocket-engineer` | WebSocket endpoints, connection managers, broadcast |
| `deployment-engineer` | Dockerfile, docker-compose, health checks |
| `rate-limit-engineer` | slowapi integration, per-route limits, Redis backend |
| `/scaffold` | Bootstrap a new FastAPI project with full structure |
| `/add-pagination` | Add limit/offset pagination to existing endpoints |

---

## Contributing

Each agent is a single markdown file. Adding a new specialist takes minutes.

**Request an agent** → [open an issue](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml)

**Submit an agent** → use `backend-engineer.md` as your template. Define what it owns and what it must never do.

---

## License

MIT

---

<div align="center">

Built for [Claude Code](https://claude.ai/code) and [Cursor](https://cursor.sh) · Made by [@uzairkhatri](https://github.com/uzairkhatri)

**If this saved you time — star it ⭐**

</div>
