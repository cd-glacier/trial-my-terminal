.PHONY: help
.DEFAULT_GOAL := help

LINKED_FILES = .config/dein .config/fish .config/nvim

init: ## install tools
	sh ./bin/installer.sh

install: init link dein ## setup my favorite tools

uninstall: unlink ## unlink .config and delete tools
	sh ./bin/uninstaller.sh

link: ## link .config to root directory
	for file in $(LINKED_FILES); do \
		ln -sf $(PWD)/$$file ~/$$file; \
	done

unlink: ## unlink .config
	for file in $(LINKED_FILES); do \
		unlink ~/$$file; \
	done

dein: ## install neovim plugins with dein.
	cd ./.config/dein;\
	sh ./installer.sh .

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
