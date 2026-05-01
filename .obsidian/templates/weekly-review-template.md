# Weekly Review — Week {{date:YYYY-[W]ww}}

## This Week's Wins
- 

## What Got Done
```dataview
LIST
FROM "daily-logs"
WHERE date >= date({{date:YYYY-MM-DD}}) - dur(7 days)
```

## System Health Trends
| Metric | Start | End | Notes |
|---|---|---|---|
| Gateway stability | | | |
| Discord uptime | | | |
| Credit burn | | | |

## Project Progress
```dataview
TABLE status, next-action
FROM "projects"
WHERE status = "active"
```

## Blockers & Decisions Needed
- 

## Next Week Focus
1. 
2. 
3. 

## Notes & Insights

---
*Reviewed by Eclipse*