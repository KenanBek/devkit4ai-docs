# Ensure npm/npx/node commands have access to nvm
SHELL := /bin/bash
.SHELLFLAGS := -c 'export NVM_DIR="$$HOME/.nvm"; [ -s "$$NVM_DIR/nvm.sh" ] && . "$$NVM_DIR/nvm.sh"; set -e; exec "$$@"' --

.PHONY: help
help: ## 📋 Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-25s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: check-node
check-node: ## ✅ Check Node.js LTS installation
	@if ! command -v node >/dev/null 2>&1; then \
		echo "❌ Node.js is not installed."; \
		if command -v nvm >/dev/null 2>&1; then \
			echo "📦 Installing Node.js LTS via nvm..."; \
			. ~/.nvm/nvm.sh && nvm install --lts && nvm use --lts; \
		else \
			echo "❌ nvm is not installed. Install it with:"; \
			echo "   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash"; \
			echo "   Then run: nvm install --lts"; \
			exit 1; \
		fi \
	else \
		NODE_VERSION=$$(node --version | sed 's/v//'); \
		NODE_MAJOR=$$(echo $$NODE_VERSION | cut -d. -f1); \
		if [ $$NODE_MAJOR -lt 19 ]; then \
			echo "❌ Node.js version $$NODE_VERSION is too old. Version 19+ required."; \
			if command -v nvm >/dev/null 2>&1; then \
				echo "📦 Installing Node.js LTS via nvm..."; \
				. ~/.nvm/nvm.sh && nvm install --lts && nvm use --lts; \
			else \
				echo "❌ nvm is not installed. Install it with:"; \
				echo "   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash"; \
				echo "   Then run: nvm install --lts"; \
				exit 1; \
			fi \
		else \
			echo "✅ Node.js $$(node --version) is installed"; \
		fi \
	fi

.PHONY: check-mint
check-mint: check-node ## ✅ Check mint CLI installation
	@if ! command -v mint >/dev/null 2>&1; then \
		echo "❌ mint CLI is not installed."; \
		echo "📦 Installing mint globally via npm..."; \
		npm i -g mint; \
		if [ $$? -eq 0 ]; then \
			echo "✅ mint CLI installed successfully"; \
		else \
			echo "❌ Failed to install mint. Please install manually with: npm i -g mint"; \
			exit 1; \
		fi \
	else \
		echo "✅ mint CLI is installed"; \
	fi

.PHONY: dev
dev: check-mint ## 📚 Start documentation site in development mode
	@echo "Starting documentation site in development mode on port 4001..."
	@mint dev --port 4001

.PHONY: check-broken-links
check-broken-links: check-mint ## 🔗 Check for broken links in the documentation site
	@echo "Checking for broken links in the documentation site..."
	@mint broken-links
