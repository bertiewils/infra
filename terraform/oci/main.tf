terraform {
  required_version = ">= 0.13"
  required_providers {
    oci = {
      source = "hashicorp/oci"
      version = ">= 4.0.0"
    }
  }
}

# ------ Create OCI VCN
resource "oci_core_vcn" "interconnect_vcn" {
  provider       = oci.oci
  cidr_block     = var.interconnect_vcn_cidr_block
  compartment_id = var.compartment_ocid
  display_name   = "InterConnect VCN"
  dns_label      = "interconnectvcn"
}


# ------ Create Public Compute Subnet
resource "oci_core_subnet" "compute_subnet" {
  provider            = oci.oci
  availability_domain = data.oci_identity_availability_domain.AD.name
  cidr_block          = var.oci_compute_subnet
  display_name        = var.oci_compute_subnet_display_name
  dns_label           = var.oci_compute_subnet_dns_label
  compartment_id      = var.compartment_ocid
  vcn_id              = oci_core_vcn.interconnect_vcn.id
  dhcp_options_id     = oci_core_vcn.interconnect_vcn.default_dhcp_options_id
}


resource "oci_core_instance" "oci_compute_instance" {
  provider            = oci
  availability_domain = data.oci_identity_availability_domain.AD.name
  compartment_id      = var.compartment_ocid
  display_name        = var.oci_compute_instance_name
  shape               = var.InstanceShape

  create_vnic_details {
    subnet_id        = oci_core_subnet.compute_subnet.id
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  source_details {
    source_type             = "image"
    source_id               = data.oci_core_images.InstanceImageOCID.images[0].id
    boot_volume_size_in_gbs = "50"
  }

  timeouts {
    create = "10m"
  }
}
