#!/usr/bin/env bash
#
# Some useful commands, shortened
# Usage: ./helper.sh <command>
#

function help () { # Show this help
	echo "Options:"
  grep "^function" "$0" \
    | awk '{out=$2; for(i=5;i<=NF;i++){out=out" "$i}; print out}' \
    | sort \
    | awk 'BEGIN {FS = " # "}; {printf "\033[36m%-20s\033[0m %s\n", $1, $2}'
}

function creds () { # Ready the credentials vault
  local CREDS_FILE=credentials.vault
	grep -q "ANSIBLE_VAULT" ${CREDS_FILE} && ansible-vault decrypt ${CREDS_FILE}
  echo "Run: source ${CREDS_FILE}"
}

function decrypt () { # Decrypt all vaults
  ansible-vault decrypt \
    group_vars/all/vault.yml \
    credentials.vault
}

function encrypt () { # Encrypt all vaults
  ansible-vault encrypt \
    group_vars/all/vault.yml \
    credentials.vault
}

function reqs () { # Install requirements
  # TODO: add checks for terraform and ansible
  pip install passlib  # for password_hash
	ansible-galaxy install -r requirements.yml
}

if [ $# != 1 ]; then
  help
else
  $1
fi
