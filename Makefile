#
# Some useful commands, shortened
# Usage: make <command>
#

SHELL := /bin/bash
.POSIX:
.PHONY: help decrypt encrypt requirements

# Credit to https://victoria.dev/blog/how-to-create-a-self-documenting-makefile
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'


# Ansible vault

decrypt: ## Decrypt all vaults
	ansible-vault decrypt group_vars/all/vault.yml

encrypt: ## Encrypt all vaults
	ansible-vault encrypt group_vars/all/vault.yml

requirements:  ## Install requirements
	pip install passlib  # for password_hash
	ansible-galaxy install -r requirements.yml
