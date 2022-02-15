provider "oci" {
  alias            = "oci"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  # auth             = "SecurityToken"
  config_file_profile = "DEFAULT"
  private_key_path = var.private_key_path
  region           = var.region
}
