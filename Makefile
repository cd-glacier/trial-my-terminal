.PHONY: help
.DEFAULT_GOAL := help

nvim: ## setup neovim
	sh ./bin/nvim.sh

fish: ## setup fish
	sh ./bin/fish.sh

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
