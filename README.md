# 🚀 DevOps Crash POCs

This repository contains small, modular Proof-of-Concepts (POCs) covering core DevOps and Unix/Linux networking/security concepts. It includes scripting in Bash, Python, Go, JavaScript — and containers built with Docker.

Each POC is self-contained, testable, and follows the Unix philosophy: do one thing well, log output, and be automatable.

---

## 🧠 Purpose

- Gain hands-on practice with DevOps fundamentals
- Understand key concepts like HTTP, DNS, SSH, OSI layers, and security tools
- Compare cross-language and cross-layer approaches
- Automate via `Makefile` or run manually

---

## 📁 Folder Structure

```text
devops-crash/
├── docker_base/               # Minimal Docker image for lab containers
│   ├── install_docker.sh
│   ├── Dockerfile
│   ├── build_image.sh
│   └── run_devops_container.sh
├── networking/
│   ├── 3_http/                # Run local HTTP server and curl test
│   │   ├── start_server.sh
│   │   ├── test_http.sh
│   │   └── logs/
│   ├── 4_ssh/                 # Connect to container via SSH and execute remote commands
│   │   ├── generate_keys.sh
│   │   ├── start_target.sh
│   │   ├── setup_ssh_access.sh
│   │   ├── ssh_into_container.sh
│   │   └── logs/
├── python/
│   └── check_disk.py          # Print disk usage using Python
├── go/
│   └── http_ping.go           # HTTP GET using Go
├── js/
│   └── env_reader.js          # Read env vars with Node.js
├── linux/
│   ├── 01_shell_commands.sh   # Shell basics
│   ├── 02_filesystem.sh       # Filesystem tasks
│   ├── 03_networking.sh       # Ping, host lookup, etc
│   ├── 04_virtualization.sh   # Virtualization detection
│   └── 05_posix.sh            # POSIX compliance tools
├── Makefile
└── README.md
````

---

## ✅ How to Run

### 🔸 Networking POCs

#### 3\_http

```bash
cd networking/3_http
./start_server.sh
sleep 2
./test_http.sh
```

#### 4\_ssh

```bash
cd networking/4_ssh
./generate_keys.sh
./start_target.sh
sleep 2
./setup_ssh_access.sh
./ssh_into_container.sh
```

> Stop container:

```bash
docker stop ssh_target
```

---

### 🔸 Docker Base (for networking POCs)

```bash
cd docker_base
./install_docker.sh        # Only if Docker is not installed
./build_image.sh           # Builds devops-lab-base
./run_devops_container.sh  # Opens interactive shell
```

---

### 🔸 Programming POCs

#### Python

```bash
python3 python/check_disk.py
```

#### Go

```bash
cd go
go run http_ping.go
```

#### JavaScript

```bash
cd js
node env_reader.js
```

---

### 🔸 Linux Scripting

```bash
bash linux/01_shell_commands.sh
bash linux/02_filesystem.sh
bash linux/03_networking.sh
bash linux/04_virtualization.sh
bash linux/05_posix.sh
```

---

## 🛠️ Makefile

```bash
make test-pocs      # Python, Go, JS
make test-linux     # All shell scripts
```

```makefile
test-pocs:
	@echo "Python:" && python3 python/check_disk.py
	@echo "Go:" && go run go/http_ping.go
	@echo "Node.js:" && node js/env_reader.js

test-linux:
	@chmod +x linux/*.sh
	@for f in linux/*.sh; do echo "🔧 $$f"; bash $$f; done
```

---

## 📌 Requirements

You should have the following installed:

* Python 3.x
* Go 1.x
* Node.js (LTS)
* Bash (included in Linux)
* Docker
* GitHub CLI (optional)
* Basic Unix tools: `awk`, `sed`, `grep`, `curl`, `ping`, `df`

---

## 📚 Recommended Learning Resources

* [DevOps Roadmap (LevelUp)](https://roadmap.sh/devops)
* [Learn Go](https://go.dev/learn/)
* [Automate with Python](https://automatetheboringstuff.com/)
* [Linux Shell Guide](https://www.shellscript.sh/)
* [Docker in Practice](https://docs.docker.com/get-started/)

---

## 🧑‍💻 Author

Made with 💻 by [mikeninerbravog](https://github.com/mikeninerbravog)
