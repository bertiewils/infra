
variable "pm_api_url" {
  default = "https://localhost:8006/api2/json"
}

variable "pm_user" {
  default = "root@pam"
}

variable "pm_pass" {
  default = "password123"
  description = "Or set env variable PM_PASS and remove from providers.tf"
}

variable "cloudinit_template" {
  default = "debian11-ci-template"
}

variable "target_node" {
  default = "proxmox1"
}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7BwsqlmVrikZwb/22x2Q8ZDVLHllSEygzlaV8l+Hjbh+x3mApXbffF/lYCuuYuzG8biaYJAsTSiXtWKjFNVHJCGHgnYoQlc36iQO7SCn+thJgF/o3Ot31/mlEe6uZf/yJ1eOWSDzrbQ1ApsR1uErCvyRvQGdrNpEoJBgM/NZeTf7uUV3FwxmRkCM42lLswrP+8jNSsLNdPiKg8ElDdsM7tTcMSeI9MwWa1C6hAMRtYw+sPOoAk8lyijgsMTZ5z5s3kbL18uUv+E+q+vxsaAu/QGT5DngbcPdE661Fo2UyFET/QMIMZCyCb+0D65mcm/s6z9qfs0udHj703Ec+xf73 ansible-key"
}
