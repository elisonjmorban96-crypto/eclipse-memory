# RECALL INDEX — Zero-Latency Memory

**Purpose:** Instant local lookup without embeddings.  
**Rule:** Runtime truth beats historical summaries.

## Index Format

```
[TAG] [SCOPE] [DATE] [FREQUENCY] FACT
```

---

## People & Identity

```
[PERSON] [GLOBAL] [2026-02-01] [LOCKED] Elison — Owner, founder, decision-maker
[PERSON] [GLOBAL] [2026-02-01] [LOCKED] Eclipse — Unified assistant identity across local OpenClaw surfaces
```

## Channel posture

```
[CHANNEL] [GLOBAL] [2026-04-14] [LOCKED] Discord — Primary active operating channel
[CHANNEL] [GLOBAL] [2026-04-14] [LOCKED] Webchat/TUI — Active direct admin and coding surface
[CHANNEL] [GLOBAL] [2026-04-14] [LOCKED] WhatsApp — Archived for current automation workflows
[CHANNEL] [GLOBAL] [2026-04-14] [LOCKED] Telegram — Decommissioned
```

## Context precedence

```
[RULE] [GLOBAL] [2026-04-14] [LOCKED] Context precedence — live runtime config first, April 2026 correction memory second, project source files next, older index/dashboard only as hints
[RULE] [GLOBAL] [2026-04-14] [LOCKED] Runtime files — ~/.openclaw/openclaw.json and ~/.openclaw/agents/main/agent/config.json
[RULE] [GLOBAL] [2026-04-14] [LOCKED] Correction memo — workspace/memory/2026-04-14-memory-correction.md
```

## Projects

```
[PROJECT] [GLOBAL] [2026-04-14] [STABLE] DevHouseAI — Active, top priority
[PROJECT] [GLOBAL] [2026-04-14] [STABLE] OneTimeStudios — Active
[PROJECT] [GLOBAL] [2026-04-14] [STABLE] SongSplit — Active
[PROJECT] [GLOBAL] [2026-04-14] [STABLE] ElisonInc — Live, maintenance mode, separate from ElisonWorld
[PROJECT] [GLOBAL] [2026-04-14] [STABLE] ElisonWorld — Live, maintenance mode, separate from ElisonInc
[PROJECT] [GLOBAL] [2026-04-14] [LOCKED] GlobalLife — Ended / archived
[PROJECT] [GLOBAL] [2026-04-14] [LOCKED] UnlimitedWebCo — Ended / archived
[PROJECT] [GLOBAL] [2026-04-14] [STABLE] Upwork Automation — Active but current DB snapshot is quiet
```

## Routing

```
[MODEL] [GLOBAL] [2026-04-14] [LOCKED] Main routing — openai/gpt-5.4
[MODEL] [GLOBAL] [2026-04-14] [LOCKED] Fallback 1 — google-gemini-cli/gemini-2.5-flash
[MODEL] [GLOBAL] [2026-04-14] [LOCKED] Fallback 2 — kimi-coding/k2p5
[MODEL] [GLOBAL] [2026-04-14] [STABLE] Worker agents — still explicitly Kimi unless changed in live config
```

## DevHouseAI operational facts

```
[PROJECT:DEVHOUSEAI] [DEVHOUSEAI] [2026-04-10] [STABLE] GHL workflows/templates — not retrievable via current API route
[PROJECT:DEVHOUSEAI] [DEVHOUSEAI] [2026-04-10] [STABLE] Accessible via API — opportunities, contacts, pipelines/stages, custom fields (session report)
[PROJECT:DEVHOUSEAI] [DEVHOUSEAI] [2026-04-10] [STABLE] Progress snapshot — 4 email templates done, demo video pending, A2P pending, workflow build pending, lead test pending
[PROJECT:DEVHOUSEAI] [DEVHOUSEAI] [2026-04-13] [STABLE] Token test — pipelines 401 unauthorized scope; opportunities 422 invalid pageLimit
```

## Upwork facts

```
[PROJECT:UPWORK] [UPWORK] [2026-04-13] [STABLE] Follow-up sweep — ran successfully
[PROJECT:UPWORK] [UPWORK] [2026-04-13] [STABLE] Current DB snapshot — 0 tracked jobs, 0 pending follow-ups, 0 submitted proposals
```

## Briefing / autonomy facts

```
[BRIEFING] [GLOBAL] [2026-04-14] [STABLE] Morning briefing output can be stale and should be verified before repeating priorities
[BRIEFING] [GLOBAL] [2026-04-14] [STABLE] Example stale output — negative music launch countdown and unavailable weather/calendar placeholders
[AUTONOMY] [GLOBAL] [2026-04-13] [STABLE] Autonomy digest — 0 actions, 0 warnings, 0 suggestions
```

## Config churn facts

```
[CONFIG] [GLOBAL] [2026-04-09] [STABLE] openclaw doctor --fix rewrote ~/.openclaw/openclaw.json
[CONFIG] [GLOBAL] [2026-04-09] [STABLE] openclaw doctor rewrote ~/.openclaw/openclaw.json
[CONFIG] [GLOBAL] [2026-04-11] [STABLE] gateway process rewrote ~/.openclaw/openclaw.json
```

## Quick search examples

```bash
grep "^\[MODEL\]" memory/RECALL-INDEX.md
grep "DEVHOUSEAI" memory/RECALL-INDEX.md
grep "CHANNEL" memory/RECALL-INDEX.md
grep "CONFIG" memory/RECALL-INDEX.md
```
