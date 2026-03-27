<div align="center">

# 🚀 FastAPI AI Team

### Your AI-powered engineering team for FastAPI — inside Claude Code.

**One sentence. Full feature. PR opened.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Built%20for-Claude%20Code-blue)](https://claude.ai/code)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/uzairkhatri/fastapi-ai-team/pulls)
[![Agents](https://img.shields.io/badge/Agents-5-orange)](https://github.com/uzairkhatri/fastapi-ai-team/tree/main/.claude/agents)

</div>

---

> **Stop writing boilerplate. Start shipping features.**
>
> FastAPI AI Team is a squad of specialized Claude Code agents that work together — each with strict rules, defined responsibilities, and no tolerance for shortcuts. Describe what you want to build. They figure out the rest.

---

## ⚡ See it in action

```
/orchestrate Add a blog posts endpoint where users can create and list posts
```

```
orchestrator   reading codebase... found app/routers, app/services, app/models
orchestrator   plan: backend-engineer → db-engineer → qa-engineer → pr-creator

backend-engineer   created app/schemas/post.py
backend-engineer   created app/services/post_service.py
backend-engineer   created app/routers/posts.py
backend-engineer   registered router in main.py

db-engineer    created app/models/post.py (Post, FK → users)
db-engineer    ran: alembic revision --autogenerate -m "add posts table"

qa-engineer    created tests/test_posts.py
qa-engineer    running pytest... 3 passed in 0.07s

pr-creator     branch: feat/blog-posts-endpoint
pr-creator     PR opened: github.com/you/your-project/pull/42
```

**From one sentence to an open PR — endpoint, schema, migration, tests included.**

---

## 🧠 The Team

| Agent | What they do | What they enforce |
|---|---|---|
| **orchestrator** | Reads your codebase, plans the chain, delegates | Never acts — only coordinates |
| **backend-engineer** | Routes, Pydantic schemas, service logic | No business logic in routers. Thin handlers only. |
| **db-engineer** | SQLAlchemy 2.0 models, Alembic migrations, queries | Every FK has `ondelete`. Migration runs before finishing. |
| **qa-engineer** | pytest + httpx tests, runs them, fixes failures | Never mocks the DB. Tests 201, 422, 404, and edge cases. |
| **pr-creator** | Branch, commit, GitHub PR | Never touches `main`. Structured PR description every time. |

The orchestrator skips agents that aren't needed. No DB changes? `db-engineer` is not called.

---

## 📦 Install

```bash
# In your FastAPI project root
git clone https://github.com/uzairkhatri/fastapi-ai-team /tmp/fastapi-ai-team
mkdir -p .claude/agents .claude/skills
cp /tmp/fastapi-ai-team/.claude/agents/* .claude/agents/
cp /tmp/fastapi-ai-team/.claude/skills/* .claude/skills/
```

> Requires [Claude Code](https://claude.ai/code) CLI.

---

## 🛠 Usage

### End-to-end feature

```
/orchestrate Add JWT authentication with login and register endpoints
```

```
/orchestrate Add a comments system where users can comment on posts
```

```
/orchestrate Add soft delete to the users table with a deleted_at column
```

### Individual agents

You can also call any agent directly for focused tasks:

```
Use the backend-engineer agent to add a PATCH /users/{id} endpoint
```

```
Use the qa-engineer agent to write tests for the existing /posts endpoint
```

```
Use the db-engineer agent to add an index on posts.user_id
```

---

## 📐 What this expects from your project

```
your-project/
├── app/
│   ├── main.py
│   ├── routers/        ← thin handlers only
│   ├── services/       ← business logic lives here
│   ├── schemas/        ← Pydantic models
│   ├── models/         ← SQLAlchemy models
│   └── db/
│       └── session.py  ← AsyncSession + Base
└── tests/
    └── conftest.py     ← test DB + AsyncClient fixtures
```

Agents read your project first. If your layout differs, they follow your conventions — not ours.

---

## 🔍 Why this is different from just prompting Claude

Raw prompting gets you working code. This gets you **consistent, production-disciplined code.**

Every agent has hard rules — not suggestions:

- **backend-engineer** will never put business logic in a router. If it sees it elsewhere in your project, it will note it but not touch it.
- **db-engineer** will run the migration before it finishes. Always.
- **qa-engineer** runs `pytest` and fixes failures before handing off. It won't pass broken tests to `pr-creator`.
- **pr-creator** will never commit unrelated files, never force push, and never touch `main`.

The orchestrator reads your codebase before doing anything — so agents follow your existing patterns, not a generic template.

---

## 🗺 Roadmap

| Agent / Skill | Description | Status |
|---|---|---|
| `auth-engineer` | JWT auth, OAuth2 password flow, protected routes | Planned |
| `code-reviewer` | Architecture enforcement, async correctness, N+1 detection | Planned |
| `migration-manager` | Alembic history, rollback detection, conflict resolution | Planned |
| `api-docs-generator` | OpenAPI descriptions, example payloads, Postman export | Planned |
| `/add-auth` | Add authentication to an existing endpoint | Planned |
| `/review-pr` | Review an open PR against FastAPI best practices | Planned |

---

## 🤝 Contributing

Agents are just markdown files with a system prompt and rules. Adding a new specialist is straightforward — use `.claude/agents/backend-engineer.md` as your template.

**To request a new agent:** open an issue with the title `[agent request] <name>` and describe what it should do and enforce.

PRs welcome.

---

## 📄 License

MIT — use it, fork it, extend it.

---

<div align="center">

Built for [Claude Code](https://claude.ai/code) · Made by [@uzairkhatri](https://github.com/uzairkhatri)

**If this saved you time, star it. ⭐**

</div>
