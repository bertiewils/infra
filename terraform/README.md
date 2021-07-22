# Terraform

<!-- BEGIN_TF_DOCS -->

### Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.9 |

### Providers

| Name | Version |
|------|---------|
| hcloud | 1.27.2 |

### Resources

| Name | Type |
|------|------|
| [hcloud_firewall.general](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |
| [hcloud_firewall.ssh-home](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |
| [hcloud_firewall.webapp-public](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |
| [hcloud_server.docker-htz](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |

### Inputs

| Name | Description | Default | Required |
|------|-------------|---------|:--------:|
| hcloud\_token | n/a | n/a | yes |

defined in `terraform.tfvars` like so:

```hcl
hcloud_token = ""

```

<!-- END_TF_DOCS -->
