# Example: SaaS API Backend

Building a multi-tenant SaaS backend — organizations, members, roles, and billing hooks.

---

## The build sequence

```
/orchestrate Add organizations — users can create an org and invite members
```
```
/orchestrate Add roles — org members can be owner, admin, or member with different permissions
```
```
/orchestrate Add a billing webhook endpoint for Stripe events
```
```
/add-auth
```
```
/audit-security
```
```
/optimize
```
```
/generate-docs
```

## What you end up with

- Full org + member + role system with permission checks
- Stripe webhook handler with signature verification
- JWT auth protecting all org-scoped endpoints
- Security audit report — findings classified Critical / High / Medium / Low, ready for you to action (the security agent is read-only and does not auto-fix)
- N+1 queries identified with fix recommendations — applied after your review
- Complete Postman collection for the whole API
- Every feature in its own PR, reviewable and reversible
