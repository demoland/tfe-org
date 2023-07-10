terraform {
  required_version = "~> 1.5.2"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.45.0"
    }
  }
}

provider "tfe" {
  token    = var.terraform_token
  hostname = "app.terraform.io"
}