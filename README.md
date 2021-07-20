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

```
touch terraform/terraform.tfvars
```

## Ansible

Required connections:

```bash
ansible-galaxy collection install ansible.posix # authorized_key
```

### Bootstrap

```bash
ansible-playbook bootstrap.yml -k -K --extra-vars "user=root"
```
