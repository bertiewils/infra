# ------ Get a List of Availability Domain
data "oci_identity_availability_domain" "AD" {
  provider       = oci.oci
  compartment_id = var.tenancy_ocid
  ad_number      = "2"
}

# ------ Get the OCI Tenancy Details
data "oci_identity_tenancy" "tenancy" {
  provider   = oci.oci
  tenancy_id = var.tenancy_ocid
}

# ------ Get the OCI Fast Connect Providors Details
data "oci_core_fast_connect_provider_services" "test_fast_connect_provider_services" {
  provider       = oci.oci
  compartment_id = var.compartment_ocid
}


data "http" "myip" {
  url = "http://checkip.dyndns.com/"
}

# ------ Get the latest Ubuntu Linux image
data "oci_core_images" "InstanceImageOCID" {
  provider            = oci.oci
  compartment_id = var.compartment_ocid
  # operating_system         = var.instance_os
  # operating_system_version = var.linux_os_version

  filter {
    name   = "display_name"
    values = ["^.*Ubuntu[^G]*$"]
    regex  = true
  }
}
