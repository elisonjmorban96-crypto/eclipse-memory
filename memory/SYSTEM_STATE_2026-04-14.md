# Eclipse System State - April 14, 2026

> Superseded note, April 29, 2026: this file is historical. Current Mission Control runs on port `3001`, active main fallbacks are `kimi-coding/k2p5` only, and credentials have been redacted from this memory.

## Runtime Configuration

### Active Session
- **Session ID:** agent:main:main
- **Runtime:** direct
- **Status:** elevated
- **Model:** kimi/k2p5 (fallback due to OpenAI quota)
- **Fallbacks:** historical snapshot listed kimi-coding/k2p5 and openrouter/auto; current chain is `openai-codex/gpt-5.4` -> `kimi-coding/k2p5`

### Gateway Status
- **OpenClaw Gateway:** ✅ Running (PID 15657, port 18789)
- **Mission Control:** historical snapshot used port 3000; current verified port is `3001`
- **RPC:** ✅ Connected
- **Version:** 2026.4.12 (1c0672b)

---

## Verified Working Integrations

### GoHighLevel (GHL)
- **Status:** ✅ Fully operational
- **Agency Token:** __REDACTED_GHL_TOKEN__
- **Sub-account Token:** __REDACTED_GHL_TOKEN__
- **Location ID:** ISUpYTlqUdcY7Wl2jNuL

**Working Endpoints:**
- ✅ Location read (agency token)
- ✅ Pipelines read (sub-account, GET)
- ✅ Contacts search (sub-account)
- ✅ Opportunities search (sub-account)

**CRM Data:**
- Total Contacts: 672
- Total Opportunities: 669
- Warmup Sequence: 97 contacts
- AI Demo Leads: 4 (test contacts to delete)

### Twilio
- **Account SID:** REDACTED
- **Phone:** +18557660712
- **A2P Status:** ❌ Not registered (blocking SMS)

### Other Services
- **ElevenLabs TTS:** ✅ Working
- **Bland AI:** ✅ Configured
- **Vercel:** ✅ Token valid
- **OpenAI:** ⚠️ Quota exceeded (resets ~12:48 PM)

---

## Created Automation Scripts

| Script | Purpose | Location |
|--------|---------|----------|
| ghl-auth-helper.sh | OAuth validation & setup | ~/.openclaw/workspace/ghl-automation/ |
| ghl-health-check.sh | Health monitoring | ~/.openclaw/workspace/ghl-automation/ |
| ghl-token-test.sh | Token testing (cron) | ~/.openclaw/workspace/scripts/ |
| analyze_ghl.py | Opportunity analysis | ~/.openclaw/workspace/ |
| analyze_contacts.py | Contact analysis | ~/.openclaw/workspace/ |

---

## Pending Actions

### Immediate (Elison)
1. Twilio A2P registration
2. Delete 4 test contacts
3. GHL email domain authentication

### After A2P (Together)
1. Bulk create opportunities for 97 warmup contacts
2. Set stage to "Cold Lead (Imported)"
3. Launch email sequence

---

## Model Routing

**Current:** kimi/k2p5  
**Reason:** OpenAI quota exhausted  
**Expected return:** openai/gpt-5.4 after ~12:48 PM  
**Fallback chain:** Working correctly

---

## Key Files Updated Today

- ~/.openclaw/.env (GHL tokens added)
- ~/.openclaw/workspace/mission-control/lib/openclaw.ts (gateway fix)
- ~/.openclaw/workspace/ghl-automation/* (new scripts)
- ~/.openclaw/workspace/scripts/ghl-token-test.sh (env-based)

---

## System Health

- Memory: 529MB
- Disk: 2.4G (40%)
- No alerts
- All services operational
