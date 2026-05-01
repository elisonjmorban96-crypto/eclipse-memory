# Today — {{date:YYYY-MM-DD}}

## Quick Actions
- [ ] Check [[system/HEARTBEAT|System Health]]
- [ ] Review [[projects/ACTIVE-PROJECTS|Active Projects]]
- [ ] Check calendar
- [ ] Review [[daily-logs/{{date:YYYY-MM-DD}}|Today's Log]]

## Active Projects Status
```dataview
TABLE status, priority, next-action
FROM "projects"
WHERE status = "active"
SORT priority DESC
```

## System Alerts
```dataview
TABLE last-updated
FROM "system"
WHERE file.name = "HEARTBEAT" OR file.name = "MEMORY"
```

## Recent Decisions
```dataview
LIST
FROM "decisions"
SORT file.mtime DESC
LIMIT 5
```

---
*Last updated: {{time:HH:mm}}*