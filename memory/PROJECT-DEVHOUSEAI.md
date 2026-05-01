# PROJECT: DevHouseAI

**Status:** Active  
**Last updated:** 2026-02-15 03:49 EST  
**Owner:** Elison  

## What It Is

Automation + AI solutions for founders and small teams. Custom builds for:
- Lead intake & triage (WhatsApp → Classification → Routing)
- Website automation (forms, follow-ups, CTA)
- Nurture sequences (email, SMS, Telegram)
- Internal copilots (sales, ops, creative, personal)

## Current Architecture

**Phase-A: Intake**
- WhatsApp interface (proven working)
- HighLevel CRM backend
- ~~3 support tickets overdue (Jan 23-31 tickets unanswered)~~ **DROPPED per Elison**

**Phase-B: Triage & Routing (Design ready, awaiting deployment)**
- Intent classification (AI model)
- Green/Yellow/Red escalation rules
- Auto-response engine (Twilio SMS, SendGrid email, Telegram)
- Blocker: AWS Secrets Manager needs Twilio + SendGrid keys (30 min setup)

**Phase-C: Website (HTML + copy ready)**
- Two variants:
  - Variant A: WhatsApp primary CTA (recommended)
  - Variant B: Book Call primary CTA
- Ready to deploy on Cloudflare Pages (25 min)

**Phase-D: Lead Nurture (Templates ready)**
- 5 email sequences designed:
  1. Cold → Warm (7-day progression)
  2. No-Show recovery
  3. Budget clarification
  4. Timeline nurturing
  5. ROI focus
- Platform choice pending (Mailchimp recommended, HubSpot best, Zapier most flexible)
- Setup: 1 hour per sequence

## Blocking Decisions (Elison Input Needed)

1. **~~HighLevel responses~~** ~~(URGENT, 15 min)~~ ❌ **DROPPED**
   - ~~3 tickets unanswered since Jan 23-31~~
   - ~~Templates ready in `proactive/2026-02-05/0-CRITICAL-ALERT.md`~~
   - ~~Action: Pull ticket details, customize, send responses~~

2. **Website variant** (5 min decision)
   - Choose Variant A (WhatsApp) or Variant B (Book Call)?
   - Recommendation: Variant A (WhatsApp is live + proven)

3. **AWS Secrets setup** (30 min work)
   - Add Twilio API key
   - Add SendGrid API key
   - Unblocks Phase-B deployment

4. **Lead nurture platform** (5 min decision)
   - Mailchimp (easiest, free tier)
   - HubSpot (best features, paid)
   - Zapier (most flexible, per-action cost)

## Files & Locations

| File | Purpose | Status |
|------|---------|--------|
| `projects/DevHouseAI/` | Project directory | ✅ Exists |
| `proactive/2026-02-05/` | Phase-B prep docs | ✅ 6 files ready |
| `proactive/2026-02-05/0-CRITICAL-ALERT.md` | ~~HighLevel ticket action plan~~ **ARCHIVED** | ~~⚠️ Urgent~~ ❌ Dropped |
| `proactive/2026-02-05/2-phase-b-pre-deployment-audit.md` | Phase-B spec + testing checklist | ✅ Complete |
| `proactive/2026-02-05/1-website-deployment-checklist.md` | Website deployment guide | ✅ Complete |
| `proactive/2026-02-05/3-lead-nurture-automation-guide.md` | Nurture sequence setup | ✅ Complete |

## Key Metrics (to track)

- Website CTR on primary CTA (goal: >5%)
- Phase-B classification accuracy (goal: >90%)
- Lead nurture open rates (goal: >25%)
- Response time to tickets (target: <4 hours)

## Timeline to Full System

- **Today (Feb 15):** Respond to HighLevel tickets (15 min) + decide website variant (5 min)
- **Tomorrow (Feb 16):** Deploy website (25 min) + add AWS secrets (30 min)
- **Wed-Thu (Feb 17-18):** Test Phase-B (1 hour) + setup first nurture automation (1 hour)
- **Fri (Feb 19):** Monitor all systems, verify metrics

**Total effort:** 3-4 hours (spread across week)

## Handoff System (for leads)

When a qualified lead comes in:
1. Greet naturally (non-salesy)
2. Ask what they're automating / what's slowing them down
3. Keep conversational; gather context
4. When ready: "This sounds like something Elison should look at directly. I can introduce you here, or if you prefer something structured, you can book a quick call."
5. User chooses → Either introduce or send booking link
6. OTA goes quiet once Elison is in

Booking link: `https://devhouseai.com/book`

## Pitch (when asked "what do you do?")

"Give me 7 days and I'll help you get leads, follow up on dead leads, and revive conversations you already paid for but never closed.

I'll also build or customize your website so it actually works - with automations, smart forms, follow-ups, and an assistant like me handling conversations, bookings, and support.

The goal isn't more tools. It's more responses, more clarity, and more money with less effort."

Follow-up (always): "What part of your workflow is currently losing you time or money?"

## Notes

- Guardrails: Don't guarantee results, don't negotiate pricing, don't promise timelines
- OTA's job: qualify, warm, hand off cleanly
- Elison closes all deals
- No deep diagnosis without Elison involvement

---

**Status:** Architecture solid, 3 decisions blocking execution. Ready to move on Elison's input.
