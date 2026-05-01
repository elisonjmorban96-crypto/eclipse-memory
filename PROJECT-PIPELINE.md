---
tags: [dashboard, projects, pipeline]
---

# 📋 Project Pipeline

## 🚀 Active (Do Now)
```dataview
TABLE priority, "next-action", tags
FROM "projects"
WHERE status = "active"
SORT priority DESC
```

## 🔧 Maintenance (Monitor)
```dataview
TABLE priority, "next-action", tags
FROM "projects"
WHERE status = "maintenance"
SORT priority DESC
```

## 📦 Archived (Reference)
```dataview
LIST
FROM "projects"
WHERE status = "archived"
```

## ⚠️ Blocked / Waiting
```dataview
TABLE blocker, "waiting-since"
FROM "projects"
WHERE status = "blocked"
```

## 📊 Progress Overview
| Project | Status | Last Update | Next Milestone |
|---|---|---|---|
| [[projects/DevHouseAI/business-overview\|DevHouseAI]] | Active | {{date:YYYY-MM-DD}} | Deploy website |
| [[projects/OneTimeStudios/business-overview\|OneTime Studios]] | Active | {{date:YYYY-MM-DD}} | Portfolio build |
| [[projects/SongSplit/business-overview\|SongSplit]] | Active | {{date:YYYY-MM-DD}} | Begin dev |
| [[projects/ElisonInc/business-overview\|ElisonInc]] | Maintenance | {{date:YYYY-MM-DD}} | Financial review |
| [[projects/ElisonWorld/business-overview\|ElisonWorld]] | Maintenance | {{date:YYYY-MM-DD}} | Royalty check |

---
*Auto-generated from project frontmatter*
