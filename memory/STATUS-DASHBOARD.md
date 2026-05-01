# STATUS DASHBOARD — Live Ops

**Last updated:** 2026-04-14  
**Purpose:** Current-state view grounded in live runtime config and the last-week correction files

---

## System Status

| Component | Status | Notes |
|-----------|--------|-------|
| Discord | ✅ Active | Primary operating channel |
| Webchat / TUI | ✅ Active | Direct admin and coding surface |
| WhatsApp | ⏸ Archived | Not the active automation path |
| Telegram | ❌ Decommissioned | Historical only |
| Main routing | ✅ Active | `openai/gpt-5.4 -> google-gemini-cli/gemini-2.5-flash -> kimi-coding/k2p5` |
| Gateway | ✅ Local | `openclaw.json` is still subject to maintenance rewrites |
| Context preload | ✅ Normalized | Main-agent preload now targets all main sessions, not only old WhatsApp conditions |

---

## Active Projects

| Project | Status | Notes |
|---------|--------|-------|
| DevHouseAI | 🔥 Active / top priority | Website live; GHL workflow/API reliability still needs verification |
| OneTimeStudios | ✅ Active | Live platform |
| SongSplit | ✅ Active | Live platform |
| Upwork Automation | 🟡 Active but quiet | Cron runs cleanly; current DB snapshot is empty |
| ElisonInc | ✅ Maintenance mode | Separate from ElisonWorld |
| ElisonWorld | ✅ Maintenance mode | Separate from ElisonInc |
| GlobalLife | Archived | No longer employed there |
| UnlimitedWebCo | Archived | No longer employed there |

---

## DevHouseAI Snapshot

| Item | Status |
|------|--------|
| Email templates | ✅ 4 created |
| Demo video | ⏳ Pending |
| A2P registration | ⏳ Pending |
| GHL workflow build | ⏳ Pending |
| Lead test after workflow | ⏳ Pending |
| Workflow/template API access | ❌ Not available through current route |

Current known API failures:
- Pipelines: `401` unauthorized scope
- Opportunities test: `422` invalid `pageLimit`

---

## Upwork Snapshot

| Item | Status |
|------|--------|
| Follow-up sweep cron | ✅ Healthy |
| Tracked jobs | 0 |
| Pending follow-ups | 0 |
| Submitted proposals in current DB snapshot | 0 |

---

## Known drift risks

1. Old February/March docs still existed and were being surfaced by bootstrap search.
2. `memory/session-context.md` had stale February 15 one-off context pinned in it.
3. Morning briefing output can still repeat stale priorities unless checked against current project files.
4. `openclaw doctor` and gateway maintenance can rewrite `openclaw.json`.

---

## Operating Rule

1. Live runtime config first
2. April 2026 correction memory second
3. Project-specific source-of-truth files next
4. Older index/dashboard files only as hints
