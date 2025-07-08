# 🚀 DevOps Crash POCs

This repository contains small Proof-of-Concepts (POCs) in different programming languages, as part of a DevOps learning journey.

Each POC demonstrates how to perform a basic automation task in a common language used in DevOps workflows.

---

## 🧠 Purpose

To compare how **Python**, **Go**, and **JavaScript (Node.js)** can be used to automate simple DevOps-related tasks.

---

## 📁 Folder Structure

```

devops-crash/
├── python/
│   └── check\_disk.py        # Prints disk usage using Python
├── go/
│   └── http\_ping.go         # Performs HTTP GET request using Go
├── js/
│   └── env\_reader.js        # Reads environment variables using Node.js
└── Makefile                 # Runs all POCs for testing

````

---

## ✅ How to Run Each POC

### 1. Python – Check Disk Usage

```bash
python3 python/check_disk.py
````

Output:

```
Disk Usage - Total: 100 GB | Used: 45 GB | Free: 55 GB
```

---

### 2. Go – Simple HTTP Ping

```bash
cd go
go run http_ping.go
```

Output:

```
Status Code: 200
```

---

### 3. JavaScript – Read Env Variables

```bash
cd js
node env_reader.js
```

Output:

```
Reading environment variables:
USER: mike
SHELL: /bin/bash
```

---

## 🛠️ Makefile (Optional)

You can run all three POCs with a single command:

```bash
make test-pocs
```

Makefile snippet:

```makefile
test-pocs:
	@echo "Running Python PoC:" && python3 python/check_disk.py
	@echo "Running Go PoC:" && go run go/http_ping.go
	@echo "Running JS PoC:" && node js/env_reader.js
```

---

## 📌 Requirements

Make sure you have installed:

* Python 3.x
* Go 1.x
* Node.js (latest LTS)

---

## 📚 Related Learning Resources

* [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/)
* [Eloquent JavaScript](https://eloquentjavascript.net/)
* [Learn Go with Tour](https://go.dev/tour/)

---

## 🧑‍💻 Author

Made with ♥️ by [mikeninerbravog](https://github.com/mikeninerbravog)

```

---


