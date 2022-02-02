# infra - WIP

## Overview

### Hardware

Proxmox CE

[Hetzner Cloud](https://hetzner.cloud/?ref=QAWf73zSnD2O) (Referral link, €20 free credit)

### Software

DNS:

Cloudflare - https://github.com/StackExchange/dnscontrol

Local DNS - Pihole

## Terraform

See the [terraform/README.md](terraform/README.md) for more information.


## Ansible

Install the requirements with:

```
./helper.sh reqs
```

### Bootstrap

```bash
ansible-playbook bootstrap.yml -k -K --extra-vars "user=root" --limit ungrouped
```
