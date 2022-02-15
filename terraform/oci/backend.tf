terraform {
  cloud {
    organization = "bertiewils"

    workspaces {
      name = "infra-oci"
    }
  }
}
