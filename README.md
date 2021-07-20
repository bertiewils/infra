# infra

## Hardware

Proxmox CE

Hetzner Cloud

## Software

## DNS

Cloudflare - https://github.com/StackExchange/dnscontrol

Local DNS - Pihole

## Terraform

```
touch terraform/terraform.tfvars
```

## Bootstrap

```
ansible-playbook bootstrap.yml -k -K --extra-vars "user=root"
```
