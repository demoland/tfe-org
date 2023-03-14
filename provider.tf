terraform {
  required_version = "~> 1.4.0"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.42.0"
    }
  }
}

provider "tfe" {
  token = var.token
}