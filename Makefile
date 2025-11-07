.PHONY: help
help: ## 📋 Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-25s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: dev
dev: ## 📚 Start documentation site in development mode
	@echo "Starting documentation site in development mode on port 4001..."
	@mint dev --port 4001

.PHONY: check-broken-links
check-broken-links: ## 🔗 Check for broken links in the documentation site
	@echo "Checking for broken links in the documentation site..."
	@mint broken-links
