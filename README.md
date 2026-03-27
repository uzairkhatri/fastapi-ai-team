<div align="center">

# FastAPI AI Team

### 11 specialized AI agents. 7 slash commands. One sentence to a production-ready PR.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-supported-5C4EE5)](https://claude.ai/code)
[![Cursor](https://img.shields.io/badge/Cursor-supported-black)](https://cursor.sh)
[![Agents](https://img.shields.io/badge/Agents-11-orange)](#the-team)
[![Skills](https://img.shields.io/badge/Skills-7-blue)](#skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/uzairkhatri/fastapi-ai-team/pulls)

</div>

---

Most AI tools write code. This one runs a team.

Drop it into any FastAPI project. Each agent has a defined role, strict rules, and a clear handoff protocol. The orchestrator reads your codebase, plans the chain, and delegates — you get back a PR with working, tested, production-disciplined code.

No more writing the same router → schema → service → model → migration → tests → PR loop for every feature.

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

**Manual**
```bash
git clone https://github.com/uzairkhatri/fastapi-ai-team /tmp/fastapi-ai-team
cp -r /tmp/fastapi-ai-team/.claude/agents/* .claude/agents/
cp -r /tmp/fastapi-ai-team/.claude/skills/* .claude/skills/
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

[backend-engineer]    reading app/routers/posts.py for patterns...
[backend-engineer]    created app/schemas/comment.py        CommentCreate, CommentResponse
[backend-engineer]    created app/services/comment_service.py  create_comment, list_comments
[backend-engineer]    created app/routers/comments.py       POST /posts/{id}/comments, GET /posts/{id}/comments
[backend-engineer]    updated app/main.py                   router registered

[db-engineer]         created app/models/comment.py         Comment, FK → posts (CASCADE), FK → users (CASCADE)
[db-engineer]         ran alembic revision --autogenerate -m "add comments table"

[qa-engineer]         created tests/test_comments.py
[qa-engineer]         pytest tests/test_comments.py -v
[qa-engineer]         test_create_comment_returns_201 PASSED
[qa-engineer]         test_create_comment_unauthenticated_returns_401 PASSED
[qa-engineer]         test_create_comment_post_not_found_returns_404 PASSED
[qa-engineer]         test_list_comments_returns_200 PASSED
[qa-engineer]         4 passed in 0.09s ✓

[pr-creator]          branch: feat/comments-endpoint
[pr-creator]          PR opened → github.com/you/your-project/pull/17
```

---

## The team

| Agent | Owns | Never |
|---|---|---|
| **orchestrator** | Reads codebase, plans chain, delegates | Writes code |
| **backend-engineer** | Routes, Pydantic schemas, service logic | Puts logic in routers |
| **db-engineer** | SQLAlchemy 2.0 models, Alembic migrations, queries | Skips migrations or uses raw SQL |
| **qa-engineer** | pytest + httpx tests, runs them, fixes failures | Mocks the database |
| **pr-creator** | Feature branch, structured commit, GitHub PR | Touches `main` or stages unrelated files |
| **auth-engineer** | JWT, OAuth2, bcrypt, `get_current_user` dependency | Hardcodes secrets or uses sha256 for passwords |
| **code-reviewer** | Architecture, async correctness, N+1 detection | Modifies code — audits only |
| **migration-manager** | Alembic history, rollback safety, conflict resolution | Runs migrations blind or deletes applied ones |
| **api-docs-engineer** | OpenAPI descriptions, examples, Postman export | Changes business logic |
| **security-engineer** | OWASP Top 10, secrets, broken auth, injection | Reports false positives |
| **performance-engineer** | N+1 queries, missing indexes, caching, pagination | Optimizes prematurely |

Agents read your project before acting. They follow your conventions — your folder structure, your naming, your base classes.

---

## Skills

| Skill | Agents it runs | When to use |
|---|---|---|
| `/orchestrate` | orchestrator → full chain | Build any new feature end-to-end |
| `/add-auth` | auth-engineer → qa-engineer → pr-creator | Add JWT auth to a project |
| `/review-pr` | code-reviewer + security-engineer | Before opening a PR |
| `/audit-security` | security-engineer | Full OWASP security scan |
| `/optimize` | performance-engineer | Find N+1s, slow queries, missing indexes |
| `/generate-docs` | api-docs-engineer | Enrich OpenAPI docs + export to Postman |
| `/add-tests` | qa-engineer | Write tests for existing untested endpoints |

---

## Workflows

**Ship a new resource**
```
/orchestrate Add a products endpoint with title, price, and category
/orchestrate Add a follow system — users can follow each other
/orchestrate Add soft delete to the posts table with a deleted_at column
```

**Secure an existing project**
```
/add-auth
/audit-security
```

**Before every PR**
```
/review-pr
```

**Optimize a slow endpoint**
```
/optimize The GET /posts endpoint is slow — find out why
```

**Catch up on docs**
```
/generate-docs
```

**Add tests to legacy code**
```
/add-tests Write tests for everything in app/routers/ that has no test file
```

---

## What it expects from your project

```
your-project/
├── app/
│   ├── main.py
│   ├── routers/
│   ├── services/
│   ├── schemas/
│   ├── models/
│   └── db/
│       └── session.py    ← AsyncSession, Base, get_db
└── tests/
    └── conftest.py       ← test DB + AsyncClient fixtures
```

Agents read your structure first. If yours differs, they adapt.

---

## Why not just prompt Claude?

Raw prompting gives you code. This gives you **disciplined code**.

Every agent operates under hard constraints — not guidelines, not suggestions. The `qa-engineer` runs `pytest` and fixes failures before handing off. It will not pass broken tests. The `db-engineer` runs the Alembic migration every time. The `security-engineer` never touches code — it audits and reports with severity levels.

The orchestrator reads your codebase before planning anything, so agents follow your patterns, not a generic template. The result lands as a reviewable PR with a structured description — not a code dump in the chat window.

---

## Roadmap

| Agent / Skill | Description |
|---|---|
| `celery-engineer` | Background tasks, beat scheduler, task retry config |
| `websocket-engineer` | WebSocket endpoints, connection managers, broadcast |
| `deployment-engineer` | Dockerfile, docker-compose, env config, health checks |
| `rate-limit-engineer` | slowapi integration, per-route limits, Redis backend |
| `/scaffold` | Bootstrap a new FastAPI project with full structure |
| `/add-pagination` | Add limit/offset pagination to existing endpoints |

---

## Contributing

Each agent is a single markdown file in `.claude/agents/`. The format is simple — name, description, tools, system prompt with rules.

**Request a new agent:** open an issue using the [agent request template](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml). The best requests define what the agent must *never* do as clearly as what it does.

**Submit an agent:** use `backend-engineer.md` as your reference. PRs with clear ownership boundaries and hard rules get merged fast.

---

## License

MIT

---

<div align="center">

Built for [Claude Code](https://claude.ai/code) and [Cursor](https://cursor.sh) · Made by [@uzairkhatri](https://github.com/uzairkhatri)

If this saved you time — star it ⭐

</div>
