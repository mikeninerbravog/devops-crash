Perfeito. Vamos então criar um **módulo DevOps auxiliar** chamado `docker_base/` que provê uma base mínima para rodar as POCs com containers, de forma reprodutível.

Ele será responsável por:

* Verificar e instalar Docker se necessário
* Criar uma imagem base DevOps-friendly (Alpine + ferramentas)
* Servir de alicerce para `4_ssh/`, `2_dns/`, `5_security_tools/`, etc.

---

## 📂 Estrutura sugerida: `docker_base/`

```
docker_base/
├── install_docker.sh       # Instala Docker se não houver
├── Dockerfile              # Imagem base com ferramentas de rede
├── build_image.sh          # Constrói imagem local
├── run_devops_container.sh # Roda container manualmente
└── README.md
```

---

## ✅ `install_docker.sh`

```bash
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
```

---

## ✅ `Dockerfile`

```Dockerfile
FROM alpine:latest

RUN apk add --no-cache \
    openssh curl bash iputils bind-tools iproute2 \
    netcat-openbsd nmap sudo

CMD ["/bin/sh"]
```

---

## ✅ `build_image.sh`

```bash
#!/bin/bash

IMAGE_NAME="devops-lab-base"

echo "🔧 Construindo imagem Docker '$IMAGE_NAME'..."
docker build -t "$IMAGE_NAME" .
echo "✅ Imagem pronta: $IMAGE_NAME"
```

---

## ✅ `run_devops_container.sh`

```bash
#!/bin/bash

IMAGE_NAME="devops-lab-base"
CONTAINER_NAME="devops-test"

docker run --rm -it --name "$CONTAINER_NAME" "$IMAGE_NAME"
```

---

## ✅ README.md (resumo rápido)

````md
# docker_base/

Minimal Docker base to support DevOps POCs (networking, SSH, DNS, etc)

## Usage

```bash
./install_docker.sh         # (if needed)
./build_image.sh
./run_devops_container.sh   # interactive shell
````

Used by:

* 2\_dns/
* 4\_ssh/
* 5\_security\_tools/

```

---
