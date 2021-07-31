# infra - WIP

## Overview

### Hardware

Proxmox CE

[Hetzner Cloud](https://hetzner.cloud/?ref=QAWf73zSnD2O)

### Software

DNS:

Cloudflare - https://github.com/StackExchange/dnscontrol

Local DNS - Pihole

## Terraform

See the [terraform/README.md](terraform/README.md) for more information.


## Ansible

Requirements:

```
pip install passlib  # for password_hash
```

Required collections:

```bash
ansible-galaxy install -r requirements.yml
```

### Bootstrap

```bash
ansible-playbook bootstrap.yml -k -K --extra-vars "user=root"
```
