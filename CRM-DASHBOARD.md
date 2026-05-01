---
tags: [dashboard, crm, clients]
---

# 💼 Client CRM Dashboard

## Active Pipeline
```dataview
TABLE status, priority, "next-action", last-contact
FROM "clients"
WHERE status != "archived"
SORT priority DESC, file.mtime DESC
```

## By Status
### 🟢 Active Clients
```dataview
LIST
FROM "clients"
WHERE status = "active"
```

### 🟡 Leads / Negotiating
```dataview
LIST
FROM "clients"
WHERE status = "lead" OR status = "negotiating"
```

### 🔴 Needs Attention
```dataview
TABLE "next-action", last-contact
FROM "clients"
WHERE status = "blocked" OR status = "waiting"
```

## Recent Meetings
```dataview
TABLE client, type, date
FROM "meetings"
SORT file.mtime DESC
LIMIT 10
```

## New Client Quick-Add
Use template: [[clients/Client-Template|Client Template]]

---
*Last updated: {{date:YYYY-MM-DD}}*
