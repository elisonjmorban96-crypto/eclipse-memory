# Projects Dashboard

```dataview
TABLE status, priority, next-action
FROM "projects"
WHERE status != "archived"
SORT priority DESC, file.name ASC
```

## Active Projects

```dataview
LIST
FROM "projects"
WHERE status = "active"
```

## Maintenance Mode

```dataview
LIST
FROM "projects"
WHERE status = "maintenance"
```

## Blocked / Waiting

```dataview
TABLE blocker, waiting-since
FROM "projects"
WHERE status = "blocked"
```
