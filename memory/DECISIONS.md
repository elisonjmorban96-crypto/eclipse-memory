# DECISIONS — Locked & Blocking

**Last updated:** 2026-04-14  
**Audit status:** Current  

## Locked Decisions (Do Not Re-Decide Without New Evidence)

### DEC-2026-04-14-CONTEXT-PRECEDENCE
- **Type:** Decision
- **Stability:** locked
- **Scope:** global
- **Content:**
  - Live runtime config first
  - April 2026 correction memory second
  - Project-specific source-of-truth files next
  - Older index/dashboard files only as historical hints
- **Why it matters:** Prevents stale February/March summaries from overriding current runtime truth.

### DEC-2026-04-14-CHANNEL-POSTURE
- **Type:** Decision
- **Stability:** locked
- **Scope:** global
- **Content:**
  - Discord is the primary active operating channel
  - Webchat/TUI is active for direct admin and coding work
  - WhatsApp automation is archived
  - Telegram is decommissioned
- **Why it matters:** Old channel assumptions were causing memory and briefing drift.

### DEC-2026-04-14-MAIN-AGENT-ROUTING
- **Type:** Decision
- **Stability:** locked
- **Scope:** global
- **Content:**
  - Main agent routing is:
    1. `openai/gpt-5.4`
    2. `google-gemini-cli/gemini-2.5-flash`
    3. `kimi-coding/k2p5`
  - Runtime authority lives in:
    - `~/.openclaw/openclaw.json`
    - `~/.openclaw/agents/main/agent/config.json`
- **Why it matters:** Older Haiku/Sonnet/Gemini/Kimi docs are now historical and should not drive current answers.

### DEC-2026-04-14-PROJECT-POSTURE
- **Type:** Decision
- **Stability:** locked
- **Scope:** global
- **Content:**
  - Active priorities: DevHouseAI, OneTimeStudios, SongSplit
  - Live maintenance-mode sites: ElisonInc, ElisonWorld
  - Archived / ended: GlobalLife, UnlimitedWebCo
- **Why it matters:** Prevents briefings and responses from reviving dead projects or conflating ElisonInc with ElisonWorld.

### DEC-2026-04-14-DISCORD-CONTEXT-PRELOAD
- **Type:** Decision
- **Stability:** locked
- **Scope:** global
- **Content:**
  - Main-agent preload should apply across active channels, not only the old WhatsApp path.
  - Preload order:
    1. `MEMORY.md`
    2. `memory/2026-04-14-memory-correction.md`
    3. `memory/session-context.md`
    4. `memory/YYYY-MM-DD.md`
- **Why it matters:** Prevents Discord from re-learning April corrections from scratch each time.

### DEC-2026-04-14-GHL-API-LIMITS
- **Type:** Decision
- **Stability:** locked
- **Scope:** project:DevHouseAI
- **Content:**
  - Treat GHL workflows/templates as unavailable through the current API path until auth/scope/request-shape is corrected.
  - Last known failures:
    - pipelines: `401` unauthorized scope
    - opportunities: `422` invalid `pageLimit`
- **Why it matters:** Stops repeated wasted audits against an API surface that is not currently reachable as assumed.

### DEC-2026-04-14-CONFIG-CHURN
- **Type:** Decision
- **Stability:** locked
- **Scope:** global
- **Content:**
  - `openclaw doctor`, `doctor --fix`, and gateway writes can rewrite `~/.openclaw/openclaw.json`.
  - Re-verify live runtime config after maintenance operations.
- **Why it matters:** Prevents docs from drifting behind the actual runtime again.

## Current blockers / follow-ups

### DevHouseAI
- GHL workflow/templates are not retrievable via the current API route.
- April 10 progress snapshot:
  - 4 email templates done
  - demo video pending
  - A2P registration pending
  - workflow build pending
  - 50-lead test pending after workflow

### Upwork Automation
- Follow-up sweep runs cleanly, but current DB snapshot shows zero tracked jobs and zero submitted proposals.

### Briefing Accuracy
- Morning briefing output can still report stale priorities or unavailable weather/calendar placeholders.

## Preferences

### PREF-2026-04-14-EXECUTION
- Fix the actual failing layer first: runtime config, auth, APIs, health checks, then app logic.

### PREF-2026-04-14-CONTEXT
- Keep bootstrap lean.
- Do not trust older summary docs when current config or current correction memory contradicts them.

### PREF-2026-04-14-MEMORY
- Curated active memory should stay current enough that bootstrap search does not surface superseded channel/model/project assumptions as if they are live.
