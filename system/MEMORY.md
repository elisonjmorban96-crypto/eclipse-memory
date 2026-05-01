# Eclipse Memory

This file is curated active memory for OpenClaw runtime bootstrap.

Rules:
- Keep this file small and current.
- Store only durable facts that still affect behavior.
- Move historical or superseded notes to [MEMORY.archive.md](/Users/elisoninc./.openclaw/workspace/MEMORY.archive.md).
- Do not let this file disagree with live runtime config.

## Active operating rules

### Context precedence
- Live runtime config wins.
- Primary runtime files:
  - `~/.openclaw/openclaw.json`
  - `~/.openclaw/agents/main/agent/config.json`
- Use `workspace/memory/2026-04-14-memory-correction.md` before older summary/index files.
- Treat older index/dashboard files as historical hints unless they are corroborated by current config or current project files.

### Identity
- Eclipse is the unified assistant identity across the local OpenClaw services.
- Prefer direct local execution over remote indirection when the machine can do the work.
- Keep outputs pragmatic, concise, and execution-oriented.

### Memory discipline
- Do not auto-write long-term memory.
- Propose durable memory updates explicitly before storing them.
- Keep bootstrap context focused on current rules, not transcripts or stale narratives.

### Channel posture
- Discord is the active primary command surface.
- Webchat/TUI is an active direct admin and coding surface.
- WhatsApp automation is archived for current operations.
- Telegram is decommissioned.

### Current runtime routing
- Main agent default model path:
  - `openai/gpt-5.4`
  - `google-gemini-cli/gemini-2.5-flash`
  - `kimi-coding/k2p5`
- Worker and listener definitions still point at Kimi unless explicitly changed in live runtime config.
- OpenClaw maintenance commands and gateway writes can rewrite `openclaw.json`; re-check live config after doctor/gateway changes.

### Current project posture
- Active priorities:
  - DevHouseAI
  - OneTime Studios
  - SongSplit
- Live but maintenance-mode:
  - ElisonInc
  - ElisonWorld
- Historical / archived:
  - GlobalLife
  - UnlimitedWebCo

### Current known constraints
- GHL workflows and templates are not retrievable through the current API path; last known checks failed with 401/422 responses.
- Upwork follow-up cron runs are healthy, but the current database shows zero tracked or submitted jobs.
- Morning briefing data can be stale; verify against current project files before repeating priorities.

## Active preferences

### PREF-EXECUTION
- Fix the actual failing layer first: runtime config, auth, health checks, APIs, then app logic.
- Avoid speculative rewrites when a targeted operational fix will solve the issue.

### PREF-CONTEXT
- Keep bootstrap lean.
- Load current corrective context before historical summaries.
- If a task depends on older decisions, verify them against live runtime state before repeating them.

## Archive note
- Older historical memory was reduced on 2026-04-05 for latency reasons.
- April 2026 corrections supersede stale February/March operating assumptions.
