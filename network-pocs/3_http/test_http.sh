#!/bin/bash
# Test HTTP server and capture headers

PORT=8000
URL="http://localhost:$PORT"
LOGDIR="./logs"
mkdir -p "$LOGDIR"

# Ensure server is running
if ! lsof -iTCP:$PORT -sTCP:LISTEN >/dev/null; then
  echo "❌ Server not running on port $PORT. Run start_server.sh first."
  exit 1
fi

echo "🔍 Testing HTTP GET on $URL..."
curl -I "$URL" > "$LOGDIR/headers.txt"

echo "✅ Response headers saved to $LOGDIR/headers.txt"
cat "$LOGDIR/headers.txt"
