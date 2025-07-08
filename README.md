# 🚀 DevOps Crash POCs

This repository contains small Proof-of-Concepts (POCs) in different areas of DevOps, including programming languages and Linux scripting.

Each POC demonstrates how to perform a basic automation or inspection task using a language or tool commonly used in DevOps workflows.

---

## 🧠 Purpose

To gain hands-on experience with essential tools for DevOps by building small, testable, and modular scripts.

These POCs help you compare how different technologies (Python, Go, JavaScript, Bash) approach the same types of tasks.

---

## 📁 Folder Structure

```

devops-crash/
├── python/
│   └── check\_disk.py         # Prints disk usage using Python
├── go/
│   └── http\_ping.go          # Performs HTTP GET request using Go
├── js/
│   └── env\_reader.js         # Reads environment variables using Node.js
├── linux/
│   ├── 01\_shell\_commands.sh  # Basic shell commands
│   ├── 02\_filesystem.sh      # Filesystem operations
│   ├── 03\_networking.sh      # Basic networking
│   ├── 04\_virtualization.sh  # Virtualization check
│   └── 05\_posix.sh           # POSIX tool check
├── Makefile                  # Runs all POCs for testing
└── README.md

````

---

## ✅ How to Run Each POC

### 🔹 1. Python – Check Disk Usage

```bash
python3 python/check_disk.py
````

Expected Output:

```
Disk Usage - Total: 100 GB | Used: 45 GB | Free: 55 GB
```

---

### 🔹 2. Go – Simple HTTP Ping

```bash
cd go
go run http_ping.go
```

Expected Output:

```
Status Code: 200
```

---

### 🔹 3. JavaScript – Read Env Variables

```bash
cd js
node env_reader.js
```

Expected Output:

```
Reading environment variables:
USER: mike
SHELL: /bin/bash
```

---

### 🔹 4. Linux & Shell Scripts

#### a) Shell Commands

```bash
bash linux/01_shell_commands.sh
```

#### b) File System Operations

```bash
bash linux/02_filesystem.sh
```

#### c) Networking Basics

```bash
bash linux/03_networking.sh
```

#### d) Virtualization Detection

```bash
bash linux/04_virtualization.sh
```

#### e) POSIX Tool Check

```bash
bash linux/05_posix.sh
```

---

## 🛠️ Makefile (Optional)

Run all POCs automatically with:

```bash
make test-pocs
make test-linux
```

### Makefile snippet:

```makefile
test-pocs:
	@echo "Running Python PoC:" && python3 python/check_disk.py
	@echo "Running Go PoC:" && go run go/http_ping.go
	@echo "Running JS PoC:" && node js/env_reader.js

test-linux:
	@chmod +x linux/*.sh
	@for f in linux/*.sh; do echo "🔧 Running $$f"; bash $$f; echo "--------------------"; done
```

---

## 📌 Requirements

You should have the following installed:

* Python 3.x
* Go 1.x
* Node.js (LTS)
* Bash (included in Linux)
* Basic Unix tools: `awk`, `sed`, `grep`, `ping`, `df`

---

## 📚 Related Learning Resources

* [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/)
* [Eloquent JavaScript](https://eloquentjavascript.net/)
* [Learn Go with Tour](https://go.dev/tour/)
* [ShellScript.sh](https://www.shellscript.sh/)
* [TutorialsPoint OS Overview](https://www.tutorialspoint.com/operating_system/os_overview.htm)

---

## 🧑‍💻 Author

Made with ♥️ by [mikeninerbravog](https://github.com/mikeninerbravog)
