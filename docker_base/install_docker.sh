#!/bin/bash
# Instala Docker no Debian/Ubuntu de forma segura

if command -v docker &> /dev/null; then
  echo "✅ Docker já instalado."
  exit 0
fi

echo "📦 Instalando Docker..."

sudo apt-get update
sudo apt-get install -y \
    ca-certificates curl gnupg lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release && echo "$ID")/gpg \
  | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/$(. /etc/os-release && echo "$ID") \
  $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "✅ Docker instalado com sucesso."
