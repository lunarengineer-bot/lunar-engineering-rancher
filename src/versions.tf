terraform {
  required_version = ">= 1.3.8"
  required_providers {
    null = {
      source = "hashicorp/null"
    }
    rancher2 = {
      source = "rancher/rancher2"
      version = "1.25.0"
    }
  }
}
