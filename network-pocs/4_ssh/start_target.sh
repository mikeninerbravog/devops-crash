#!/bin/bash
# Inicia um container Alpine com OpenSSH

CONTAINER_NAME="ssh_target"
PORT=2222

docker run -d --rm \
  --name $CONTAINER_NAME \
  -p $PORT:22 \
  alpine:latest sh -c "
    apk add --no-cache openssh && \
    echo 'root:root' | chpasswd && \
    ssh-keygen -A && \
    /usr/sbin/sshd -D
  "

echo "✅ Container $CONTAINER_NAME started on port $PORT"
