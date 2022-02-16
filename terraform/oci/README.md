# infra/terraform/oci

<!-- BEGIN_TF_DOCS -->

### Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| oci | >= 4.0.0 |

### Providers

| Name | Version |
|------|---------|
| http | 2.1.0 |
| oci | 4.63.0 |
| oci.oci | 4.63.0 |

### Resources

| Name | Type |
|------|------|
| [oci_core_instance.oci_compute_instance](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_subnet.compute_subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_vcn.interconnect_vcn](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_vcn) | resource |
| [http_http.myip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [oci_core_fast_connect_provider_services.test_fast_connect_provider_services](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_fast_connect_provider_services) | data source |
| [oci_core_images.InstanceImageOCID](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |
| [oci_identity_availability_domain.AD](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domain) | data source |
| [oci_identity_tenancy.tenancy](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_tenancy) | data source |

### Inputs

| Name | Description | Default | Required |
|------|-------------|---------|:--------:|
| InstanceImageOCID | Instance Image OCID | `"ocid1.image.oc1.uk-london-1.aaaaaaaa7vmmzcxwdnhxxfzuguh64yvvsunkvyoumr4qdcqjb4muwodxrvca"` | no |
| InstanceShape | Instance Default Size | `"VM.Standard.E2.1.Micro"` | no |
| compartment\_ocid | User Compartment OCID | n/a | yes |
| compute\_route\_table\_display\_name | OCI Compute Route Table Name | `"ComputeRouteTable"` | no |
| fingerprint | User Private Key Fingerprint | n/a | yes |
| interconnect\_vcn\_cidr\_block | Interconnect VCN CIDR | `"10.1.0.0/16"` | no |
| internet\_gateway\_name | OCI Internet Gateway Name | `"IGW"` | no |
| oci\_compute\_instance\_name | OCI Compute VM Name | `"ComputeVM"` | no |
| oci\_compute\_subnet | Compute Subnet CIDR | `"10.1.10.0/24"` | no |
| oci\_compute\_subnet\_display\_name | Compute Subnet Name | `"ComputeSubnet"` | no |
| oci\_compute\_subnet\_dns\_label | Compute Subnet DNS Label | `"computesubnet"` | no |
| private\_key\_path | User Private Key Path | n/a | yes |
| region | User Region Value | `"uk-london-1"` | no |
| security\_policy\_name | OCI Security Policy Name | `"AzureSecurityList"` | no |
| ssh\_public\_key | SSH Public Key String | n/a | yes |
| tenancy\_ocid | User Tenancy OCID | n/a | yes |
| user\_ocid | User OCID | n/a | yes |

<!-- END_TF_DOCS -->
