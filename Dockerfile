# Eclipse Memory - Unified Agent System
FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY agent/ ./agent/
COPY config/ ./config/
COPY skills/ ./skills/
COPY knowledge/ ./knowledge/

# Create necessary directories
RUN mkdir -p memory/{vector,json,sqlite} logs

# Expose ports
EXPOSE 50001 50002

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:50001/health || exit 1

# Start command
CMD ["python", "agent/eclipse_zero.py"]
