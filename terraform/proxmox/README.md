# infra/terraform/proxmox

<!-- BEGIN_TF_DOCS -->

### Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

### Providers

| Name | Version |
|------|---------|
| proxmox | 2.9.5 |

### Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.shell2](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/vm_qemu) | resource |
| [proxmox_vm_qemu.shell3](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/vm_qemu) | resource |

### Inputs

| Name | Description | Default | Required |
|------|-------------|---------|:--------:|
| cloudinit\_template | n/a | `"debian11-ci-template"` | no |
| pm\_api\_url | n/a | `"https://localhost:8006/api2/json"` | no |
| pm\_pass | Or set env variable PM\_PASS and remove from providers.tf | `"password123"` | no |
| pm\_user | n/a | `"root@pam"` | no |
| ssh\_key | n/a | `"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7BwsqlmVrikZwb/22x2Q8ZDVLHllSEygzlaV8l+Hjbh+x3mApXbffF/lYCuuYuzG8biaYJAsTSiXtWKjFNVHJCGHgnYoQlc36iQO7SCn+thJgF/o3Ot31/mlEe6uZf/yJ1eOWSDzrbQ1ApsR1uErCvyRvQGdrNpEoJBgM/NZeTf7uUV3FwxmRkCM42lLswrP+8jNSsLNdPiKg8ElDdsM7tTcMSeI9MwWa1C6hAMRtYw+sPOoAk8lyijgsMTZ5z5s3kbL18uUv+E+q+vxsaAu/QGT5DngbcPdE661Fo2UyFET/QMIMZCyCb+0D65mcm/s6z9qfs0udHj703Ec+xf73 ansible-key"` | no |
| target\_node | n/a | `"proxmox1"` | no |

<!-- END_TF_DOCS -->
