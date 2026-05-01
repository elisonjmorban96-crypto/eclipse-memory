# PROJECT: Upwork Automation

**Status:** Active (Phases 1-4 complete, Phase 5 pending)  
**Last updated:** 2026-02-15 03:50 EST  
**Owner:** Elison  

## What It Is

Automated job discovery, proposal generation, submission, and follow-up on Upwork.

**Pipeline:** Search → Score → Draft → Approval Gate → Submit → Follow-ups → Track Responses

## Current Status

✅ **Phase 1:** SQLite schema + runner + logging  
✅ **Phase 2:** Upwork search + shortlist scoring  
✅ **Phase 3:** Draft proposals + approval gate (Telegram notifications)  
✅ **Phase 4:** Submit proposals + schedule follow-ups  
⏭ **Phase 5:** Track responses + sync to Render (pending approval)

## Database Schema

**Location:** `projects/upwork-automation/data/upwork.db`

4 tables:
1. **jobs** — Core job data + submission history
2. **job_status_log** — Audit trail (drafted → submitted → viewed → replied → interviewed → hired/rejected)
3. **runs** — Track each automation run (jobs found, submitted, errors)
4. **follow_ups** — Track follow-up messages sent

## Filtering Rules (from config.json)

**Keywords:** AI automation, Zapier, CRM, lead gen, chatbot, etc.  
**Blocklist:** NFT, crypto, betting, adult, unpaid test, commission-only  
**Thresholds:** $30+/hr, $200+ fixed, client rating ≥4.5  
**Data captured:** title, client, budget, posted time, proposal text, status timeline

## Proposal Templates (by job type)

- **Chatbot:** Lead qualification + Zapier/SMS
- **CRM:** GoHighLevel + lead workflows
- **API:** Web scraping + custom integrations
- **Web:** React dashboards + Stripe
- **Automation:** Zapier + Make.com workflows
- **Content:** Airtable + content ops
- **General:** Fallback for mixed jobs

## Execution Scripts

```bash
npm run submit              # Full pipeline (search → draft → submit)
npm run submit:dry          # Dry-run test (no actual submissions)
npm run submit-only         # Just Phase 4 (submit pre-drafted)
npm run followup            # Just Phase 5 (process responses)
```

## Cron Job Setup

**Template ready:** `cron-job-template.json`  
**Schedule:** Every 2 hours, 8 AM - 10 PM ET  
**Requires:** Elison approval before submission (Phase 4)  
**Telegram notifications:** Shortlists, errors, status updates

## Phase 5 (Next)

**What it does:**
- Monitor job status changes (views, replies, interviews)
- Send auto-follow-ups at 3, 7, 14 days post-submission
- Sync state to optional Render backup for 24/7 persistence

**Timeline:** Ready to build when approved

## Key Metrics

- Jobs found per run (target: 2-5)
- Proposal quality (goal: >30% client view rate)
- Response rate (goal: >15% replies)
- Interview conversion (goal: >5% offers)
- Cost per contract (low, all local)

## Architecture Notes

- **Primary:** OpenClaw cron on Mac (every 2h, free)
- **Secondary:** Optional Render backup ($15/mo)
- **Approval gate:** User approval in Telegram before submission (v1)
- **Database:** SQLite + git backup

## Known Issues

- None currently (Phase 4 testing complete)

## Files & Locations

| File | Purpose |
|------|---------|
| `projects/upwork-automation/` | Project directory |
| `projects/upwork-automation/runner.js` | Main orchestrator |
| `projects/upwork-automation/schema.sql` | Database schema |
| `projects/upwork-automation/config.json` | Filtering rules + preferences |
| `projects/upwork-automation/package.json` | Dependencies |
| `projects/upwork-automation/data/upwork.db` | SQLite database |
| `projects/upwork-automation/QUICKSTART.md` | Testing guide + DB queries |

## Success Criteria

- [ ] Phase 5 built and tested
- [ ] Render sync optional (not required)
- [ ] Cron job running daily
- [ ] First proposals submitted
- [ ] Follow-up scheduling working
- [ ] Response tracking validated

---

**Status:** Ready for Phase 5 approval + Cron setup.
