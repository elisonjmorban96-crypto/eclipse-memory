# System Fixes — April 30, 2026

## What we fixed today

### Morning briefing
- Hardened Discord delivery with JSON output and failure alerting
- Removed duplicate test/resend posts from #eclipse

### Evening check-in
- Replaced brittle `grep` counting with proper JSON parsing
- Added degraded/failure detection and Discord alerting

### Reminders sync
- Switched from AppleScript to SQLite direct-read path
- Same reliability level as calendar sync now

### Autonomy scripts
- Fixed `notify.sh`: md5→shasum hash, Python heredoc variable expansion bug
- Fixed `monitor.sh`: ioreg path, unbound variables, `local` outside function, service checks now use health endpoint instead of process-name grepping
- Fixed `port-monitor-optimized.sh`: array expansion under `set -u`, missing port targets
- Fixed `usage-reporter.sh`: variable name mismatch (`job_count` vs `updated_report`)
- Fixed `ghl-health-check-optimized.sh`: added alert cooldown to prevent spam

### Scheduler hygiene
- Removed duplicate OpenClaw `evening-check-in` job (system crontab is the reliable path)
- Verified no other split-brain duplicates between system cron and OpenClaw cron

### Port monitor
- Updated monitored ports: 18789, 18791, 3001, 3030, 11434
- All ports currently healthy

## Still open / next
- Briefing content upgrade: merge Apple + Google calendars, add reminders section
- Consider adding CRM activity summary to evening check-in
