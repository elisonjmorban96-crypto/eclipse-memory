# Model Routing And Precedence

Verified: April 29, 2026

## Source Of Truth
- Global runtime: `~/.openclaw/openclaw.json`
- Main agent override: `~/.openclaw/agents/main/agent/config.json`
- Monitor routing policy: `~/.openclaw/workspace/monitor/lib/routing.js`

## Active Main-Agent Order
1. `openai-codex/gpt-5.5` (primary thinking brain)
2. `codex/gpt-5.5` (coding specialist — worker-1)
3. `moonshot/kimi-k2.6` (long-build specialist — worker-2 only)

`openrouter/auto` is the general fallback when the primary model is unavailable.

## Worker Roles
- `main`: GPT-5.5 thinking brain for reasoning, planning, conversation, and routing decisions.
- `discord-listener`: GPT-5.5 for fast Discord responses and delegation.
- `worker-1`: Codex 5.5 coding specialist for repo edits, debugging, scripts, tests, and deployment fixes.
- `worker-2`: Kimi K2.6 long-build specialist for autonomous builds, multi-file refactors, frontend redesigns, and agent swarm work.
- `worker-gemma`: local-only continuity worker on `ollama/gemma4`.

## Monitor Routing
- Critical requests go to Codex first.
- Complex non-critical requests prefer Sonnet when the monitor sees it as available.
- Non-critical requests are queued when no usable provider/model is available.
- The queue worker no longer blocks ready tasks behind one delayed retry.

## Operational Rule
1. Live runtime config first.
2. This routing file second.
3. Project-specific source-of-truth files next.
4. Older dashboards, memories, and audit reports only as historical hints.

## Verification
```bash
openclaw config get agents.defaults
openclaw models list
openclaw gateway status
curl -sS http://127.0.0.1:3030/health
```
