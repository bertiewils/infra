#!/usr/bin/env bash
#
# Some useful commands, shortened
# Usage: make <command>
#

SHELL := /usr/bin/env bash
.POSIX:
.PHONY: help decrypt encrypt requirements

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

decrypt: ## Decrypt all vaults
	@ansible-vault decrypt \
		group_vars/all/vault.yml \
		credentials.vault

encrypt: ## Encrypt all vaults
	@ansible-vault encrypt \
		group_vars/all/vault.yml \
		credentials.vault

requirements:  ## Install requirements
	@# TODO: add checks for terraform and ansible
	pip install github3.py  # for latest docker-compose
	pip install passlib  # for password_hash
	ansible-galaxy install -r requirements.yml
