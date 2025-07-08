#!/bin/bash
# Copia chave pública para o container para permitir login root sem senha

KEY_PATH="./keys/id_rsa.pub"
CONTAINER_NAME="ssh_target"

if [ ! -f "$KEY_PATH" ]; then
  echo "❌ SSH key not found. Run generate_keys.sh first."
  exit 1
fi

docker exec -i $CONTAINER_NAME sh -c "
  mkdir -p /root/.ssh && \
  echo \"$(cat $KEY_PATH)\" >> /root/.ssh/authorized_keys && \
  chmod 600 /root/.ssh/authorized_keys
"

echo "✅ SSH access set up for root in container"
