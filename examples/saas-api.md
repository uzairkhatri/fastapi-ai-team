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
- Security audit with findings fixed
- N+1 queries identified and resolved
- Complete Postman collection for the whole API
- Every feature in its own PR, reviewable and reversible
