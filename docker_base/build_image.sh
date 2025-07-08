#!/bin/bash

IMAGE_NAME="devops-lab-base"

echo "🔧 Construindo imagem Docker '$IMAGE_NAME'..."
docker build -t "$IMAGE_NAME" .
echo "✅ Imagem pronta: $IMAGE_NAME"
