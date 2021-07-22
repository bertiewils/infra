# infra

## Overview

### Hardware

Proxmox CE

Hetzner Cloud

### Software

DNS:

Cloudflare - https://github.com/StackExchange/dnscontrol

Local DNS - Pihole

## Terraform

See the [terraform/README.md](terraform/README.md) for more information.


## Ansible

Required collections:

```bash
ansible-galaxy install -r requirements.yml
```

### Bootstrap

```bash
ansible-playbook bootstrap.yml -k -K --extra-vars "user=root"
```
