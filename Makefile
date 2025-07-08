test-pocs:
	@echo "Running Python PoC:" && python3 python/check_disk.py
	@echo "Running Go PoC:" && go run go/http_ping.go
	@echo "Running JS PoC:" && node js/env_reader.js
