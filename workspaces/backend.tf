terraform {
  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "tfe-organizations"
    }
  }
}
