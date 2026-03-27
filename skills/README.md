# Skills

7 slash commands that chain agents together into complete workflows.

| Skill | Command | What it runs |
|---|---|---|
| Orchestrate | `/orchestrate <feature description>` | Full agent chain — endpoint to PR |
| Add Auth | `/add-auth` | auth-engineer → qa-engineer → pr-creator |
| Review PR | `/review-pr` | code-reviewer + security-engineer |
| Audit Security | `/audit-security` | security-engineer (full OWASP scan) |
| Optimize | `/optimize <description>` | performance-engineer |
| Generate Docs | `/generate-docs` | api-docs-engineer |
| Add Tests | `/add-tests <description>` | qa-engineer |

## Examples

```
/orchestrate Add a notifications system — users get notified when someone likes their post
/add-auth
/review-pr
/audit-security
/optimize The GET /feed endpoint feels slow
/generate-docs
/add-tests Write tests for all endpoints in app/routers/ with no test coverage
```

→ Back to [main README](../README.md)
