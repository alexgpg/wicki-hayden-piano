# Wicki–Hayden Piano — local dev server.
# Serving over http://localhost is what lets Web MIDI work in Firefox
# (localhost is exempt from Firefox's site-permission-add-on requirement).

PORT ?= 8000

.DEFAULT_GOAL := run

.PHONY: run
run: ## Serve this directory at http://localhost:$(PORT)
	@echo "Serving Wicki–Hayden Piano at http://localhost:$(PORT)  (Ctrl+C to stop)"
	@python3 -m http.server $(PORT) --bind 127.0.0.1
