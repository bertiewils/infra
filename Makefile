#!/usr/bin/env bash
#
# Some useful commands, shortened
# Usage: ./helper.sh <command>
#

SHELL := /usr/bin/env bash
.POSIX:
.PHONY: help credentials decrypt encrypt requirements
.ONESHELL: credentials

# Credit to https://victoria.dev/blog/how-to-create-a-self-documenting-makefile
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'


credentials: ## Export creds as env vars
	@$(eval CREDS_FILE=credentials.vault)
	@grep -q "ANSIBLE_VAULT" ${CREDS_FILE} && ansible-vault decrypt ${CREDS_FILE}
	@source ${CREDS_FILE} && echo Source successful
	@ansible-vault encrypt ${CREDS_FILE}

# Ansible vault

decrypt: ## Decrypt all vaults
	@ansible-vault decrypt \
		group_vars/all/vault.yml \
		credentials.vault

encrypt: ## Encrypt all vaults
	@ansible-vault encrypt \
		group_vars/all/vault.yml \
		credentials.vault

requirements:  ## Install requirements
	pip install passlib  # for password_hash
	ansible-galaxy install -r requirements.yml
