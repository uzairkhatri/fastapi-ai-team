<div align="center">

![FastAPI AI Team](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=200&section=header&text=FastAPI%20AI%20Team&fontSize=60&fontColor=fff&animation=twinkling&fontAlignY=38&desc=Your%20AI-powered%20FastAPI%20engineering%20team&descAlignY=58&descSize=20)

[![GitHub stars](https://img.shields.io/github/stars/uzairkhatri/fastapi-ai-team?style=social)](https://github.com/uzairkhatri/fastapi-ai-team/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/uzairkhatri/fastapi-ai-team?style=flat)](https://github.com/uzairkhatri/fastapi-ai-team/network/members)
[![GitHub contributors](https://img.shields.io/github/contributors/uzairkhatri/fastapi-ai-team?style=flat)](https://github.com/uzairkhatri/fastapi-ai-team/graphs/contributors)
[![GitHub issues](https://img.shields.io/github/issues/uzairkhatri/fastapi-ai-team)](https://github.com/uzairkhatri/fastapi-ai-team/issues)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-supported-5C4EE5?logo=anthropic)](https://claude.ai/code)
[![Cursor](https://img.shields.io/badge/Cursor-supported-black?logo=cursor)](https://cursor.sh)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml)
[![Sponsor](https://img.shields.io/badge/Sponsor-%E2%9D%A4-pink?logo=github)](https://github.com/sponsors/uzairkhatri)

![Python](https://img.shields.io/badge/-Python-3776AB?logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/-FastAPI-009688?logo=fastapi&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/-PostgreSQL-4169E1?logo=postgresql&logoColor=white)
![SQLAlchemy](https://img.shields.io/badge/-SQLAlchemy-D71F00?logoColor=white)
![Alembic](https://img.shields.io/badge/-Alembic-6BA81E?logoColor=white)

> **11 agents · 7 skills · One sentence to a production-ready PR**

</div>

---

## Contents

- [What it does](#what-it-does)
- [Install](#install)
- [See it run](#see-it-run)
- [The team](#the-team)
- [Skills](#skills)
- [Scenarios](#scenarios)
- [Workflows](#workflows)
- [Stats](#stats)
- [Why not just ask Claude directly?](#why-not-just-ask-claude-directly)
- [What it expects](#what-it-expects)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Catalog](CATALOG.md)
- [Security](SECURITY.md)

---

## What it does

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

### Supported tools

| Tool | Status | Installs to |
|------|--------|-------------|
| Claude Code | ✅ Supported | `~/.claude/agents/` + `~/.claude/commands/` |
| Cursor | ✅ Supported | `.cursor/rules/` |
| Windsurf | Planned | — |
| OpenCode | Planned | — |

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

> **Want to see a real run?** Drop a screen recording in [Discussions](https://github.com/uzairkhatri/fastapi-ai-team/discussions) and we'll feature it here.

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

### In their own words

> *"I read your entire codebase before writing a single line. Your patterns, not mine."*
> — **orchestrator**

> *"I run pytest and fix failures before I hand off. You never see a broken test."*
> — **qa-engineer**

> *"I audit only. I touch nothing. Every finding is classified Critical / High / Medium / Low."*
> — **security-engineer**

> *"I open the PR on a clean branch. I never touch main."*
> — **pr-creator**

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

## Scenarios

### Ship a feature end-to-end
```
/orchestrate Add a follow system — users can follow each other
```
`orchestrator` reads your project, plans the chain. `backend-engineer` writes routes + service. `db-engineer` creates the model and migration. `qa-engineer` writes and runs tests. `pr-creator` opens the PR. One command.

---

### Add auth to an existing project
```
/add-auth
/audit-security
```
`auth-engineer` adds JWT routes, bcrypt hashing, and route guards. `security-engineer` audits for hardcoded secrets, missing rate limits, and OWASP Top 10 issues. `qa-engineer` writes auth tests. PR opened.

---

### Harden before going live
```
/audit-security
/review-pr
/optimize
```
Full OWASP scan → architecture review → N+1 and index analysis. Three agents, zero code touched without your approval.

---

### Fix slow endpoints
```
/optimize
```
`performance-engineer` finds N+1 queries, missing indexes, unneeded eager loading, and missing caching opportunities. Prioritized report, no auto-changes.

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

## Stats

- **11 agents** — each with hard constraints, not guidelines
- **7 skills** — multi-agent workflows triggered by a single command
- **0 lines** written before reading your project structure
- **100%** of PRs opened from a clean branch, never touching main
- **1 command** from feature request to merged PR

---

## Why not just ask Claude directly?

| | Raw prompting | fastapi-ai-team |
|---|---|---|
| Reads your project structure first | ❌ Guesses | ✅ Always |
| Tests actually run | ❌ Sometimes | ✅ pytest runs; failures fixed before handoff |
| PR opened automatically | ❌ No | ✅ Branch + commit + PR |
| Agents stay in their lane | ❌ No | ✅ Hard constraints, not guidelines |
| Output is reviewable | ❌ Chat window dump | ✅ PR diff |
| Migration generated | ❌ Often forgotten | ✅ Alembic autogenerate, every time |
| Security checked before merge | ❌ Manual | ✅ `security-engineer` classifies every finding |

The result is a reviewable PR — not a code dump in the chat window.

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

## Roadmap

Help us build these — [vote on what ships next](https://github.com/uzairkhatri/fastapi-ai-team/discussions).

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

**Submit an agent** → use `backend-engineer.md` as your template. Define what it owns and what it must never do. See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide.

**Discuss** → [GitHub Discussions](https://github.com/uzairkhatri/fastapi-ai-team/discussions) — share what you've built, request workflows, ask questions.

---

## Changelog

### v1.1.0
- Added `auth-engineer`, `code-reviewer`, `migration-manager`, `api-docs-engineer`, `security-engineer`, `performance-engineer`
- Added `/add-auth`, `/review-pr`, `/audit-security`, `/optimize`, `/generate-docs`, `/add-tests` skills
- Added Cursor support + install script

### v1.0.0
- Initial release: `orchestrator`, `backend-engineer`, `db-engineer`, `qa-engineer`, `pr-creator`
- `/orchestrate` skill

---

## License

MIT — use freely, modify as needed, contribute back if you can.

---

<div align="center">

**FastAPI AI Team — your AI-powered engineering crew, built for Claude Code and Cursor**

[⭐ Star this repo](https://github.com/uzairkhatri/fastapi-ai-team) • [🍴 Fork it](https://github.com/uzairkhatri/fastapi-ai-team/fork) • [💬 Discuss](https://github.com/uzairkhatri/fastapi-ai-team/discussions) • [🐛 Report an issue](https://github.com/uzairkhatri/fastapi-ai-team/issues) • [🙋 Request an agent](https://github.com/uzairkhatri/fastapi-ai-team/issues/new)

**Liked it?** [Share on X](https://twitter.com/intent/tweet?text=I%20just%20found%20fastapi-ai-team%20%E2%80%94%20an%20AI-powered%20FastAPI%20engineering%20team%20inside%20Claude%20Code.%20One%20command%20ships%20a%20full%20endpoint%20with%20tests%20and%20a%20PR.%20https%3A%2F%2Fgithub.com%2Fuzairkhatri%2Ffastapi-ai-team) · [Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fgithub.com%2Fuzairkhatri%2Ffastapi-ai-team)

Made by [@uzairkhatri](https://github.com/uzairkhatri) · If this saved you time, a star goes a long way.

![footer](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=100&section=footer)

</div>
