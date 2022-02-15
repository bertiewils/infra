############################
#  OCI Tenancy Credentials #
############################

variable "tenancy_ocid" {
  description = "User Tenancy OCID"
}

variable "compartment_ocid" {
  description = "User Compartment OCID"
}

variable "region" {
  description = "User Region Value"
  default     = "uk-london-1"
}

variable "user_ocid" {
  description = "User OCID"
}

variable "fingerprint" {
  description = "User Private Key Fingerprint"
}

variable "private_key_path" {
  description = "User Private Key Path"
}

variable "ssh_public_key" {
  description = "SSH Public Key String"
}

############################
# Instance Credentials #
############################

variable "InstanceShape" {
  description = "Instance Default Size"
  default     = "VM.Standard.E2.1.Micro"
}

variable "InstanceImageOCID" {
  description = "Instance Image OCID"
  default     = "ocid1.image.oc1.uk-london-1.aaaaaaaa7vmmzcxwdnhxxfzuguh64yvvsunkvyoumr4qdcqjb4muwodxrvca"
}



###########################################
#  Oracle Cloud Infrastructure Variables  #
###########################################

variable "interconnect_vcn_cidr_block" {
  description = "Interconnect VCN CIDR"
  default     = "10.1.0.0/16"
}

variable "oci_compute_subnet_display_name" {
  description = "Compute Subnet Name"
  default     = "ComputeSubnet"
}

variable "oci_compute_subnet" {
  description = "Compute Subnet CIDR"
  default     = "10.1.10.0/24"
}

variable "oci_compute_subnet_dns_label" {
  description = "Compute Subnet DNS Label"
  default     = "computesubnet"
}

variable "internet_gateway_name" {
  description = "OCI Internet Gateway Name"
  default     = "IGW"
}

variable "compute_route_table_display_name" {
  description = "OCI Compute Route Table Name"
  default     = "ComputeRouteTable"
}

variable "security_policy_name" {
  description = "OCI Security Policy Name"
  default     = "AzureSecurityList"
}

variable "oci_compute_instance_name" {
  description = "OCI Compute VM Name"
  default     = "ComputeVM"
}
