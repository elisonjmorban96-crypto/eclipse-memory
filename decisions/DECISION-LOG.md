---
decision-type: system-change
status: locked
date: 2026-05-01
impact: high
---

# Decision Log

## 2026-05-01: Disable kimi-claw Plugin
**Context:** Gateway experiencing severe event loop delays, 12,585 kimi-bridge disconnections  
**Decision:** Disable `kimi-claw` plugin in `openclaw.json`  
**Reasoning:** Bridge instability chronic; direct API calls for `kimi-coding/k2p5` don't require it  
**Outcome:** Reduced bridge errors but event loop delays persist (other cause suspected)  
**Reversible:** Yes — can re-enable in config  
**Links:** [[system/HEARTBEAT|System Status]], [[daily-logs/2026-05-01|Session Log]]

---

## 2026-05-01: Migrate to Obsidian Vault
**Context:** Scattered memory files in `~/.openclaw/workspace/`  
**Decision:** Consolidate all memory into Obsidian vault at `~/Documents/Eclipse-Memory/`  
**Reasoning:** Better search, graph view, cross-linking, portable for migration  
**Outcome:** 368 files organized with dashboards, templates, Dataview queries  
**Reversible:** Yes — original files remain  
**Links:** [[Dashboard]], [[memory/INDEX|Memory Index]]

---

## 2026-05-01: Plan Migration to More Capable Device
**Context:** MacBook Air reaching limits, Gateway CPU spiking  
**Decision:** Prepare to move Eclipse to more capable hardware  
**Reasoning:** Current host insufficient for stable Gateway + multiple agents  
**Outcome:** Obsidian vault created as portable knowledge base, repo synced to GitHub  
**Reversible:** N/A — migration  
**Links:** [[today-dashboard|Today Dashboard]]

---

## 2026-04-30: Fix Credit Monitor to Check All Providers
**Context:** Only checking Anthropic previously  
**Decision:** Expand to 5 providers: Anthropic, OpenAI, Google, OpenRouter, Kimi  
**Reasoning:** Need full visibility into credit status across all APIs  
**Outcome:** JSON report saved to `cron-results/credit-report.json`  
**Reversible:** Yes — can modify script  
**Links:** [[system/HEARTBEAT|Heartbeat]], [[scripts/credit-monitor.sh]]

---

*New decisions: Copy this format. Tag with #decision #locked.*
