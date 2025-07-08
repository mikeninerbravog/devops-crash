#!/bin/bash
# Start HTTP server on port 8000 in background

PORT=8000
LOGDIR="./logs"
mkdir -p "$LOGDIR"

echo "🌐 Starting HTTP server on port $PORT..."
python3 -m http.server "$PORT" > "$LOGDIR/server.log" 2>&1 &

SERVER_PID=$!
echo "$SERVER_PID" > "$LOGDIR/server.pid"
echo "✅ Server started with PID $SERVER_PID"
