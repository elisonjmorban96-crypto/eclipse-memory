# Eclipse Memory

A unified AI agent system combining Eclipse, Agent Zero, and WhatsApp integration.

## Overview

Eclipse Memory is a seamless AI agent platform that operates on **localhost:50001**, replacing the traditional localhost:3000 setup. It unifies:

- **Eclipse Agent** - Core AI assistant with tool access
- **Agent Zero** - Autonomous agent patterns and workflows
- **WhatsApp Integration** - Messaging interface
- **Memory System** - Persistent knowledge across sessions

## Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Eclipse Memory System                     │
│                      (localhost:50001)                       │
├─────────────────────────────────────────────────────────────┤
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────┐  │
│  │   Eclipse   │  │ Agent Zero  │  │     WhatsApp        │  │
│  │   Core      │  │  Patterns   │  │   Integration       │  │
│  └──────┬──────┘  └──────┬──────┘  └──────────┬──────────┘  │
│         └─────────────────┼────────────────────┘             │
│                           │                                  │
│              ┌────────────┴────────────┐                     │
│              │    Unified Memory       │                     │
│              │    & Knowledge Base     │                     │
│              └─────────────────────────┘                     │
└─────────────────────────────────────────────────────────────┘
```

## Directory Structure

```
eclipse-memory/
├── agent/                      # Core agent implementation
│   ├── eclipse_zero.py        # Merged Eclipse + Agent Zero
│   ├── memory_engine.py       # Unified memory system
│   └── tool_router.py         # Tool dispatch
├── config/
│   ├── system_prompts/        # Modular prompt system
│   │   ├── role.md
│   │   ├── environment.md
│   │   ├── communication.md
│   │   ├── solving.md
│   │   └── tips.md
│   └── agents.yaml            # Agent configurations
├── memory/                     # Persistent storage
│   ├── vector/                # Vector embeddings
│   ├── json/                  # Structured memories
│   └── sqlite/                # Relational data
├── integrations/
│   ├── whatsapp/              # WhatsApp bridge
│   ├── web/                   # Web interface (:50001)
│   └── cli/                   # Command line
├── skills/                     # Portable capabilities
│   └── SKILL.md               # Skill definitions
├── knowledge/                  # Knowledge base
│   └── agent-zero/            # Agent Zero docs/patterns
└── docker-compose.yml         # Unified deployment
```

## Quick Start

```bash
# Start the unified system
docker-compose up -d

# Or run locally
python agent/eclipse_zero.py

# Access web interface
open http://localhost:50001
```

## Ports

- **50001** - Main web interface (replaces 3000)
- **50002** - WebSocket for real-time updates
- **50003** - WhatsApp bridge API

## Features

### From Eclipse
- Tool-based execution (Shell, ReadFile, WriteFile, etc.)
- Sub-agent spawning with Task tool
- Web search and URL fetching
- File operations and code editing

### From Agent Zero
- 4-step problem solving protocol
- Memory consolidation
- Subordinate agent spawning
- Skills system
- Behavioral rules

### WhatsApp Integration
- Bi-directional messaging
- Lead capture and routing
- Google Sheets integration
- Email notifications

## Memory System

The unified memory system combines:
- **Short-term**: Session context
- **Long-term**: Persistent JSON storage
- **Vector**: Semantic search with embeddings
- **Solutions**: Reusable problem solutions

## Configuration

Edit `config/agents.yaml` to customize:
- Model providers (OpenAI, Anthropic, etc.)
- Tool permissions
- Memory settings
- Integration endpoints

## License

MIT - See LICENSE file
