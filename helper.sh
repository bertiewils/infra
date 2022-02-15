
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
  pip install github3.py  # for latest docker-compose
  pip install passlib  # for password_hash
	ansible-galaxy install -r requirements.yml
}

if [ $# != 1 ]; then
  help
else
  $1
fi
