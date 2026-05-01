# DevHouse AI Website — Source of Truth & Recent Changes

## Architecture (CONFIRMED)
- **Type**: React + Vite + TypeScript (NOT static HTML)
- **Source of Truth**: GitHub repo `ElisonInc/devhouse-ai-website`
- **Live URL**: https://www.devhouseai.com
- **Deploy**: Vercel (auto-deploys from GitHub main branch)

## External Drive Location (Legacy/Backup)
`/Volumes/ELISON_2026/openclaw/portable-workspace/projects/DevHouseAI/website`
- **Status**: OUTDATED — Static HTML version from February
- **Action**: Do NOT edit this. Use GitHub repo instead.

## Recent Changes (March 2026)

### March 11 — Brand Consistency & Contractor Focus
**Commit**: `dd68487c` — "fix: complete brand consistency - all CTAs orange, added exit popup, fixed SEO"
- Changed ALL CTAs to orange (`#c9784f`) for brand consistency
- Removed green (`#5a9a6e`) accent color
- Added exit-intent popup
- Fixed SEO meta tags

**Commit**: `b5a721a3` — "fix: removed all placeholder data from forms and contact info"
- Removed "Avery" character references
- Updated phone to: +1-855-766-0712
- Email: hello@devhouseai.com
- Cleaned up placeholder text in forms

**Commit**: `891578fd` — "fix: email changed to hello@devhouseai.com, added favicon.svg"
- Standardized email across all touchpoints
- Added proper favicon

### March 8 — Contractor-Focused Pivot
**Commit**: `c75d9a45` — "final: contractor-focused copy with objection crusher and problem cards"
- Complete copy rewrite for contractors (landscapers, remodelers, HVAC)
- Added objection crusher section
- Added problem/solution cards
- ROI math: "One $8K job pays for 8 months"

**Commit**: `39b1054f` — "direct-response copy: contractor-focused with ROI math"
- Direct response copywriting approach
- Heavy focus on ROI and revenue recovery

### March 5 — OG Image & Client Portal
- Finalized OG image: 1536×864 horizontal, 16:9 ratio
- Created `/start.html` — client onboarding portal
- Digital Presence Starter add-on: $2,500 one-time

### March 3 — Pricing Overhaul
**Old Tiers** (SaaS model):
- Front Desk: $497/mo
- Lead Engine: $1,250/mo  
- Growth Partner: $2,500/mo

**New Tiers** (Service model):
- Core: $2,500 setup + $750/mo (2 pipelines, 3 workflows, 1 landing page)
- Pro: $4,500 setup + $1,250/mo (4-5 workflows, AI chatbot, 5-page website)
- Elite: $7,500 setup + $2,000/mo (unlimited workflows, lead scoring, CRM)

## Current Tech Stack
- **Framework**: React 18 + Vite
- **Styling**: Tailwind CSS
- **Animation**: GSAP + ScrollTrigger
- **Icons**: Lucide React
- **Forms**: Formspree (formspree.io/f/xdalylrl)
- **Deploy**: Vercel

## File Structure
```
src/
  components/
    Navigation.tsx
    Footer.tsx
    CookieBanner.tsx (new)
  sections/
    HeroSection.tsx
    ProblemSection.tsx
    SimpleCoverageSection.tsx
    PricingSection.tsx
    DigitalPresenceSection.tsx
    SocialProofSection.tsx
    ContactSection.tsx
    FAQSection.tsx
public/
  favicon.svg
  og-image.png
  avery-logo.png
  hero_city_skyline.jpg
  ...
index.html
```

## Critical Notes
1. **NEVER edit external drive version** — it's archived/static HTML
2. **ALWAYS work from GitHub repo** — `ElisonInc/devhouse-ai-website`
3. **Main branch auto-deploys** to Vercel on every push
4. **Vercel token stored** in `~/.openclaw/.env` for CLI deploys

## Remaining Issues (from audit)
- [ ] "AVERY" text still in minified JS (line ~163) — remove
- [ ] Hidden SEO content references "Avery" — cleanup needed
- [ ] og-image.png is 186KB — could compress further
- [ ] No cookie consent banner currently (was added then rolled back)

## Next Steps
1. Keep GitHub as single source of truth
2. Delete or archive external drive static version
3. Set up staging branch for testing changes
4. Re-apply audit quick wins on current React codebase
