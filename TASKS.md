---
tags: [dashboard, tasks, actions]
---

# ✅ Action Items Dashboard

## 🔴 Overdue / Critical
```dataview
TASK
FROM ""
WHERE !completed AND due < date(today) OR text.includes("🔴")
SORT due ASC
```

## 📋 This Week
```dataview
TASK
FROM ""
WHERE !completed
SORT file.name ASC
```

## 🎯 From Active Projects
```dataview
TABLE file.link, status, "next-action"
FROM "projects"
WHERE status = "active" AND "next-action" != ""
```

## 📞 Client Follow-ups
```dataview
TABLE last-contact, "next-action"
FROM "clients"
WHERE status != "archived"
SORT last-contact ASC
```

## 📥 Inbox (Quick Captures)
```dataview
TASK
FROM "inbox"
WHERE !completed
```

## 📊 Meeting Action Items
```dataview
TASK
FROM "meetings"
WHERE !completed
```

---
*Pulls tasks from everywhere in the vault*
