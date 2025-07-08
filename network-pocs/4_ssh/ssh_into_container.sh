#!/bin/bash
# Executa comando via SSH no container

PORT=2222
KEY_PATH="./keys/id_rsa"
LOGDIR="./logs"
mkdir -p "$LOGDIR"

echo "🔐 SSH-ing into container and running uname -a"
ssh -i "$KEY_PATH" -o StrictHostKeyChecking=no -p $PORT root@localhost "uname -a" > "$LOGDIR/ssh_output.txt"

echo "✅ Output saved to $LOGDIR/ssh_output.txt"
cat "$LOGDIR/ssh_output.txt"
