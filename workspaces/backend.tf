terraform {
  backend "remote" {
    organization = "hashicorp-federal"
    workspaces {
      name = "tfe-workspaces"
    }
  }
}
