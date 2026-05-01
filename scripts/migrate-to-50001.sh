#!/bin/bash
# Migrate from localhost:3000 to localhost:50001

echo "🚀 Eclipse Memory Migration: 3000 → 50001"
echo "=========================================="

# Kill processes on port 3000
echo "🔍 Checking port 3000..."
PID_3000=$(lsof -ti:3000 2>/dev/null)
if [ -n "$PID_3000" ]; then
    echo "⚠️  Found process on port 3000 (PID: $PID_3000)"
    echo "   Stopping process..."
    kill -TERM $PID_3000 2>/dev/null
    sleep 2
    
    # Force kill if still running
    if kill -0 $PID_3000 2>/dev/null; then
        kill -9 $PID_3000 2>/dev/null
    fi
    echo "✅ Port 3000 freed"
else
    echo "✅ Port 3000 already free"
fi

# Check port 50001
echo ""
echo "🔍 Checking port 50001..."
PID_50001=$(lsof -ti:50001 2>/dev/null)
if [ -n "$PID_50001" ]; then
    echo "⚠️  Found process on port 50001 (PID: $PID_50001)"
    echo "   This might be the Eclipse Memory system already running"
else
    echo "✅ Port 50001 available"
fi

# Update environment
echo ""
echo "📝 Updating environment configuration..."

# Create/update .env
if [ ! -f ".env" ]; then
    cat > .env << 'EOF'
# Eclipse Memory Configuration
NODE_ENV=production
PORT=50001
WS_PORT=50002
WHATSAPP_PORT=50003

# API Keys (load from ~/.openclaw/.env or set here)
# OPENAI_API_KEY=
# ANTHROPIC_API_KEY=
# KIMI_API_KEY=

# WhatsApp Integration
WHATSAPP_LEAD_SHEET_ID=1KrDiddG7JMgZEsLRW5EvaeZsCyN_Ihs43ihfUpbV0pc
LEAD_EMAIL_RECIPIENT=DevHouse.app@gmail.com

# Memory Paths
MEMORY_PATH=./memory
CONFIG_PATH=./config
EOF
    echo "✅ Created .env file"
fi

echo ""
echo "🔄 Next steps:"
echo "   1. Run: docker-compose up -d"
echo "   2. Open: http://localhost:50001"
echo "   3. Verify: curl http://localhost:50001/health"
echo ""
echo "🎯 Port 3000 → 50001 migration complete!"
