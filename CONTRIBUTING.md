# Contributing

Contributions are welcome — new agents, new skills, bug fixes, and documentation improvements.

---

## What you can contribute

- **A new agent** — a specialist that owns a specific domain (e.g. `celery-engineer`, `websocket-engineer`)
- **A new skill** — a slash command that chains existing agents into a workflow
- **A bug fix** — an agent that produces incorrect output, breaks constraints, or skips steps
- **An example** — a real project scenario added to `examples/`
- **Documentation** — improvements to README, CATALOG, or agent/skill reference files

---

## How to add an agent

Each agent is a single markdown file with a YAML frontmatter block.

1. Use an existing agent as a template — e.g. `.claude/agents/backend-engineer.md`
2. Define:
   - `name` — the agent's identifier (kebab-case)
   - `description` — one sentence used by the orchestrator to decide when to delegate
   - `tools` — which Claude Code tools this agent can use
3. In the body, state clearly:
   - What the agent **owns** (it must always do this)
   - What the agent **must never do** (hard constraints, not guidelines)
   - The step-by-step process it follows
4. Place the file in `.claude/agents/` (for Claude Code) and `.cursor/agents/` (for Cursor, if applicable)
5. Add it to `CATALOG.md`

**Open a PR** — the description should show a real example of the agent running and producing correct output.

---

## How to add a skill

A skill is a slash command that orchestrates one or more agents.

1. Use an existing skill as a template — e.g. `.claude/skills/orchestrate.md`
2. The file defines the prompt that runs when the user invokes the slash command
3. Place the file in `.claude/skills/`
4. Add it to `CATALOG.md`

---

## How to request something

- **Request a new agent** → [open an issue](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml)
- **Report a bug** → [open a bug report](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=bug-report.yml)
- **Discuss ideas** → [GitHub Discussions](https://github.com/uzairkhatri/fastapi-ai-team/discussions)

---

## Code of conduct

Be direct and specific in issues and PRs. Include examples. See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
