# Eclipse Memory - Setup Guide

## ✅ What Was Created

A unified AI agent system that merges:
- **Eclipse** - Tool-based execution
- **Agent Zero** - Autonomous agent patterns
- **WhatsApp** - Messaging integration
- **Memory System** - Persistent knowledge

**All running on localhost:50001** (port 3000 retired)

## 📁 Repository Structure

```
eclipse-memory/
├── agent/
│   └── eclipse_zero.py          # Main merged agent
├── config/
│   ├── agents.yaml              # Unified configuration
│   └── system_prompts/          # Modular prompts
├── knowledge/agent-zero/        # Agent Zero docs/prompts
├── memory/                      # Persistent storage
├── integrations/                # WhatsApp, Web, CLI
├── docker-compose.yml           # Deploys on :50001
└── scripts/
    └── migrate-to-50001.sh      # Migration helper
```

## 🚀 Quick Start

### 1. Environment Setup

```bash
cd ~/eclipse-memory
cp .env.example .env
# Edit .env with your API keys
```

### 2. Start the System

```bash
# Using Docker (recommended)
docker-compose up -d

# Or run locally
pip install -r requirements.txt
python agent/eclipse_zero.py
```

### 3. Verify

```bash
# Health check
curl http://localhost:50001/health

# Web interface
open http://localhost:50001

# Chat API
curl -X POST http://localhost:50001/chat \
  -H "Content-Type: application/json" \
  -d '{"message": "Hello Eclipse Memory"}'
```

## 🔌 Port Mapping

| Service | Old Port | New Port | Status |
|---------|----------|----------|--------|
| Web Interface | 3000 | **50001** | ✅ Moved |
| WebSocket | - | 50002 | ✅ New |
| WhatsApp Bridge | - | 50003 | ✅ New |

## 📤 Push to GitHub

The repo is ready to push to `elisonjmorban96-crypto/eclipse-memory`:

```bash
cd ~/eclipse-memory

# Push to GitHub
git push -u origin main

# If you need to authenticate:
# git remote set-url origin https://elisonjmorban96-crypto:TOKEN@github.com/elisonjmorban96-crypto/eclipse-memory.git
```

## 🔗 Integration with Existing Projects

### OneTime Studios (was on :3000)

Update to use Eclipse Memory:

```bash
# In your project directory
export ECLIPSE_API_URL=http://localhost:50001

# The Next.js app can now call Eclipse Memory
```

### WhatsApp Agent

Already configured to route through port 50001. Check:

```bash
curl http://localhost:50003/health  # WhatsApp bridge
```

## 🧠 Memory System

The unified memory combines:

1. **JSON Store** - `memory/json/*.json` - Structured memories
2. **Vector DB** - Chroma for semantic search
3. **SQLite** - Relational data

### Save Memory

```python
from agent.memory_engine import save_memory

save_memory(
    content="Important discovery",
    category="solution",
    tags=["react", "performance"]
)
```

## 🔄 Migration from Port 3000

Already completed:
- ✅ Killed process on port 3000
- ✅ Updated configuration
- ✅ Created migration script

To verify nothing uses 3000:
```bash
lsof -i :3000  # Should return nothing
```

## 🛠️ Development

### Add New Skills

Create `skills/my-skill/SKILL.md`:
```markdown
# My Skill

## When to Use
...

## Workflow
...
```

### Customize Prompts

Edit files in `config/system_prompts/`:
- `system.role.md` - Agent personality
- `system.solving.md` - Problem-solving protocol
- `system.environment.md` - Tool descriptions

### Sub-Agent Spawning

```python
# In a task
Task(
    description="Analyze component",
    prompt="Analyze the auth system in /path/to/auth"
)
```

## 📊 Monitoring

```bash
# View logs
docker logs -f eclipse-memory

# Check all services
docker-compose ps

# Restart
docker-compose restart
```

## 🎯 Next Steps

1. **Push to GitHub**
   ```bash
   git push -u origin main
   ```

2. **Start the system**
   ```bash
   docker-compose up -d
   ```

3. **Test the integration**
   ```bash
   curl http://localhost:50001/health
   ```

4. **Update your workflow**
   - Use `localhost:50001` instead of `3000`
   - Leverage the unified memory system
   - Spawn sub-agents for parallel work

## 🆘 Troubleshooting

**Port 50001 already in use:**
```bash
lsof -ti:50001 | xargs kill -9
docker-compose up -d
```

**Missing API keys:**
```bash
# Copy from ~/.openclaw/.env
cat ~/.openclaw/.env >> ~/eclipse-memory/.env
```

**Git push fails:**
```bash
# Create repo on GitHub first, then:
git remote set-url origin https://github.com/elisonjmorban96-crypto/eclipse-memory.git
git push -u origin main
```

---

**Eclipse Memory is ready!** 🎉

One system. One port (50001). All your AI agents unified.
