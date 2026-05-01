# SEARCH CHEATSHEET — Memory Queries

**Zero-API memory search. All local, all instant.**

---

## Usage Pattern

```bash
cd /Users/elisoninc./.openclaw/workspace
grep [PATTERN] memory/[FILE].md
```

---

## Quick Queries

### About DevHouseAI

```bash
# What's blocking DevHouseAI?
grep "BLOCKER.*DEVHOUSEAI" memory/RECALL-INDEX.md

# What are the 4 decisions?
grep "DEVHOUSEAI" memory/DECISIONS.md | head -20

# Full DevHouseAI snapshot
cat memory/PROJECT-DEVHOUSEAI.md

# DevHouseAI prep files location
grep "proactive/2026-02-05" memory/PROJECT-DEVHOUSEAI.md
```

### About Upwork

```bash
# Upwork current status
grep "Phase" memory/PROJECT-UPWORK.md | head -10

# All Upwork filters
grep "FILTERS\|THRESHOLDS\|TEMPLATES" memory/RECALL-INDEX.md

# Upwork scripts ready
grep "npm run" memory/PROJECT-UPWORK.md

# Full Upwork snapshot
cat memory/PROJECT-UPWORK.md
```

### Urgent Tasks

```bash
# All blockers
grep "BLOCKER\|🔴" memory/STATUS-DASHBOARD.md

# All urgent items
grep "URGENT\|Do today\|Critical" memory/STATUS-DASHBOARD.md

# Decision deadlines
grep "UPCOMING\|URGENT" memory/RECALL-INDEX.md
```

### Communication & Preferences

```bash
# How to reach you
grep "CHANNEL\|VOICE" memory/RECALL-INDEX.md

# Your communication style
grep "PREF.*GLOBAL" memory/RECALL-INDEX.md

# Briefing times & voices
grep "VOICE" memory/RECALL-INDEX.md

# Handoff to you (pitch + link)
grep "PITCH\|BOOKING" memory/RECALL-INDEX.md
```

### Decisions & Rules

```bash
# All locked decisions (don't re-decide)
grep "\[LOCKED\]" memory/DECISIONS.md

# All blocking decisions (awaiting input)
grep "Blocking Decisions" memory/DECISIONS.md -A 50

# Model routing rules
grep "MODEL" memory/RECALL-INDEX.md

# Memory structure rules
grep "DECISION.*MEMORY" memory/RECALL-INDEX.md
```

### Projects at a Glance

```bash
# All projects
grep "\[PROJECT\].*\[GLOBAL\]" memory/RECALL-INDEX.md

# Active projects
grep "ACTIVE\|✅" memory/STATUS-DASHBOARD.md | grep "Project"

# Project locations
grep "LOCATION.*PROJECT" memory/RECALL-INDEX.md
```

### Timeline & Upcoming

```bash
# What's happening this week?
grep "UPCOMING" memory/RECALL-INDEX.md

# Next 48 hours
grep "Today\|Tomorrow" memory/STATUS-DASHBOARD.md -A 5

# All events
grep "\[EVENT\]" memory/RECALL-INDEX.md
```

### Tools & Infrastructure

```bash
# What tools do we use?
grep "\[TOOL\]\|\[API\]" memory/RECALL-INDEX.md

# Git / GitHub info
grep "TOOL.*Git\|TOOL.*GitHub" memory/RECALL-INDEX.md

# Google Calendar accounts
grep "Google Calendar" memory/RECALL-INDEX.md

# TTS settings (Brian / George)
grep "VOICE" memory/RECALL-INDEX.md
```

### Costs & Resources

```bash
# Annual budget
grep "COST.*Annual" memory/RECALL-INDEX.md

# Project costs
grep "COST" memory/RECALL-INDEX.md

# Resource locations
grep "RESOURCE" memory/RECALL-INDEX.md
```

---

## Advanced Queries

### Find all mutable facts (can change)

```bash
grep "\[MUTABLE\]" memory/RECALL-INDEX.md
```

### Find all stable facts (unlikely to change)

```bash
grep "\[STABLE\]" memory/RECALL-INDEX.md
```

### Find all work done this week

```bash
grep "2026-02-1[4-9]\|2026-02-2[0-9]" memory/RECALL-INDEX.md
```

### Find all decisions from a specific date

```bash
grep "\[DECISION\].*2026-02-14" memory/RECALL-INDEX.md
```

### Find all DevHouseAI facts

```bash
grep "DEVHOUSEAI\|DevHouseAI" memory/RECALL-INDEX.md
```

### Find all Upwork facts

```bash
grep "UPWORK\|Upwork" memory/RECALL-INDEX.md
```

### Find everything related to a person

```bash
grep "Elison" memory/RECALL-INDEX.md
```

### Find all urgent or critical items

```bash
grep "URGENT\|CRITICAL\|🔴" memory/
```

---

## File Guide (What to Search)

| Need | Search This | Command |
|------|-------------|---------|
| Quick fact lookup | RECALL-INDEX.md | `grep "[TAG]" memory/RECALL-INDEX.md` |
| Decision rules | DECISIONS.md | `grep "Decision\|Blocker" memory/DECISIONS.md` |
| Project snapshot | PROJECT-*.md | `cat memory/PROJECT-DEVHOUSEAI.md` |
| Live status | STATUS-DASHBOARD.md | `grep "🔴\|⏳" memory/STATUS-DASHBOARD.md` |
| Current work | session-context.md | `cat memory/session-context.md` |
| Daily work log | 2026-02-*.md | `cat memory/2026-02-15.md` |
| All memory | *.md | `grep -r "keyword" memory/` |

---

## Pattern Combinations

### "What do I need to do today?"
```bash
cat memory/STATUS-DASHBOARD.md | grep "Today" -A 10
```

### "What are all my blockers?"
```bash
grep "\[BLOCKER\]\|🔴" memory/RECALL-INDEX.md memory/STATUS-DASHBOARD.md
```

### "What's the pitch for DevHouseAI?"
```bash
grep -A 5 "PITCH" memory/RECALL-INDEX.md | grep DEVHOUSEAI
```

### "How do I reach Elison?"
```bash
grep "CHANNEL.*GLOBAL\|CONTACT.*GLOBAL" memory/RECALL-INDEX.md
```

### "What's been built so far?"
```bash
grep "\[PROJECT\].*STABLE\|Phase.*DONE\|✅" memory/RECALL-INDEX.md memory/STATUS-DASHBOARD.md
```

### "What decisions are locked (don't re-decide)?"
```bash
grep "\[LOCKED\]" memory/DECISIONS.md | head -10
```

### "What's the next priority?"
```bash
grep "Next 48\|Today\|URGENT" memory/STATUS-DASHBOARD.md -A 10
```

---

## Aliasing (Optional)

If you want to save time, add these to your shell:

```bash
# In your ~/.zshrc or ~/.bashrc:

alias e-blockers='grep "BLOCKER\|🔴" ~/.openclaw/workspace/memory/RECALL-INDEX.md'
alias e-today='cat ~/.openclaw/workspace/memory/STATUS-DASHBOARD.md | grep "Today" -A 10'
alias e-devhouse='cat ~/.openclaw/workspace/memory/PROJECT-DEVHOUSEAI.md'
alias e-upwork='cat ~/.openclaw/workspace/memory/PROJECT-UPWORK.md'
alias e-status='cat ~/.openclaw/workspace/memory/STATUS-DASHBOARD.md'
alias e-decisions='cat ~/.openclaw/workspace/memory/DECISIONS.md'
```

Then just run:
```bash
e-blockers      # See all blockers
e-today         # See today's work
e-devhouse      # See DevHouseAI status
e-status        # See live dashboard
```

---

## Memory Maintenance

### Every session end:
```bash
# Update daily log
nano memory/2026-02-15.md

# Update status dashboard
nano memory/STATUS-DASHBOARD.md

# Commit to git
git add memory/ && git commit -m "2026-02-15: [work summary]"
```

### Weekly:
```bash
# Update RECALL-INDEX with new facts
nano memory/RECALL-INDEX.md

# Update DECISIONS if new decisions made
nano memory/DECISIONS.md

# Verify PROJECT-*.md files are current
ls -la memory/PROJECT-*.md
```

### Before big changes:
```bash
# Backup current state
git tag -a 2026-02-15-backup -m "Pre-deployment backup"

# Push to GitHub
git push -u origin main
```

---

## Cost of This System

- ✅ Zero API calls (all local)
- ✅ Zero embeddings (grep is instant)
- ✅ Zero latency (<100ms per search)
- ✅ Git-backed (recoverable)
- ✅ Searchable (standard tools)

**Total memory cost per year:** $0

---

**Last updated:** 2026-02-15 03:55 EST  
**Ready to use:** Yes, immediately  
**Maintainability:** High (simple files, human-readable)
