terraform {
  required_version = "~> 1.5.1"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.44.0"
    }
  }
}

provider "tfe" {
  token    = var.terraform_token
  hostname = "app.terraform.io"
}