# Key Decisions

**Purpose:** Locked architectural and operational choices.

## Channel Posture
- **Discord** = primary active operating channel
- **Webchat/TUI** = active for direct admin/coding
- **WhatsApp** = archived
- **Telegram** = decommissioned

## Model Routing
- **Primary:** `openai/gpt-5.4`
- **Fallbacks:** `google-gemini-cli/gemini-2.5-flash`, `kimi-coding/k2p5`
- **Verify against live runtime config** before repeating

## Project Posture
- **Active:** DevHouseAI, OneTimeStudios, SongSplit
- **Maintenance:** ElisonInc, ElisonWorld
- **Archived:** GlobalLife, UnlimitedWebCo

## Config Churn
- `openclaw doctor` can rewrite `~/.openclaw/openclaw.json`
- **Always re-verify live runtime config** after maintenance

## Cron Policy
- Cron jobs are **execution-only** by default
- LLM only invoked for explicitly designated briefing jobs

## Secrets
- `~/.openclaw/.env` = canonical store for env-var secrets
- Do not store API keys in shell profiles

---

*These decisions are locked. Changes require explicit approval and documentation.*
