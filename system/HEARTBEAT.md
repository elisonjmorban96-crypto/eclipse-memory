# HEARTBEAT.md - Eclipse System Heartbeat

**Last verified:** April 30, 2026
**Policy:** Minimal, reliable, actionable. Discord-first. No healthy-status chatter.

## OpenClaw Scheduler Jobs

| Job | Schedule | Current status note |
|-----|----------|---------------------|
| `port-monitor` | every 5 minutes | `ok` |
| `eclipse-health-check` | every 1 hour | `ok` |
| `evening-check-in` | 6:00 PM ET | `ok` (runs via system crontab) |
| `eclipse-self-optimize` | every 1 day | `ok` |
| `ghl-crm-daily-sync` | 8:00 AM ET | `ok` |
| `Credit Monitor - Gemini & Claude` | 9:30 AM | `ok` |

Check with:
```bash
openclaw cron list
```

## System Crontab Jobs

| Schedule | Job |
|----------|-----|
| `0 7 * * *` | `~/.openclaw/scripts/morning-briefing.sh` |
| `0 2 * * *` | `openclaw update --yes` |
| `*/15 * * * *` | `~/.openclaw/scripts/autonomy/monitor.sh` |
| `*/5 * * * *` | `~/.openclaw/scripts/autonomy/notify.sh` |
| `0 6 * * *` | `~/.openclaw/scripts/autonomy/learn.sh` |
| `0 21 * * *` | `~/.openclaw/scripts/autonomy/digest.sh` |
| `*/5 * * * *` | calendar sync |
| `*/5 * * * *` | reminders sync |
| `0 14 * * *` | GHL token test |
| `0 18 * * *` | evening check-in |

Check with:
```bash
crontab -l
```

## Monitored Ports

| Port | Service | Expected |
|------|---------|----------|
| 18789 | OpenClaw Gateway | active |
| 18791 | OpenClaw Gateway aux | active |
| 3001 | Mission Control | active |
| 3030 | Eclipse Monitor | active |
| 11434 | Ollama | active |

## Heartbeat Rules

1. Silent success: only alert on real problems.
2. Log everything under `~/.openclaw/logs/` or `workspace/cron-results/`.
3. Discord for human notifications.
4. Verify before alerting.
5. Self-healing can restart gateway and related services.
6. Scheduled DM checks should stay quiet when healthy.

## Manual Checks

```bash
openclaw gateway status
openclaw cron list
openclaw config validate
lsof -nP -iTCP:3001 -iTCP:3030 -iTCP:18789 -iTCP:11434 -sTCP:LISTEN
ls -lt ~/.openclaw/workspace/cron-results/ | head -10
```

## Notes

- Mission Control is on port `3001`, not `3000`.
- Agent Zero on port `50001` is not part of the active heartbeat unless explicitly enabled.
- OpenClaw cron subcommands that go through the gateway can still time out on some command paths; `openclaw cron list` is the reliable quick check.
- Duplicate OpenClaw `evening-check-in` was removed Apr 30 2026; system crontab is the single source of truth for that job.
