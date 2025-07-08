test-linux:
	@chmod +x linux/*.sh
	@for f in linux/*.sh; do echo "🔧 Running $$f"; bash $$f; echo "--------------------"; done
