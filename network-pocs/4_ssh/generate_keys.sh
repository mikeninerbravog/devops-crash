#!/bin/bash
# Gera chave SSH para acesso ao container

KEY_DIR="./keys"
mkdir -p "$KEY_DIR"

ssh-keygen -t rsa -b 2048 -f "$KEY_DIR/id_rsa" -N "" -C "devops_ssh_test"

echo "✅ SSH key pair generated in $KEY_DIR"
