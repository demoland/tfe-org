resource "tfe_organization" "demodan" {
  name  = "DEMODAN"
  email = "daniel.fedick@hashicorp.com"
}

resource "tfe_project" "demo" {
  name         = "demo-dan"
  organization = tfe_organization.demodan.name
}

resource "tfe_workspace" "aws_vpc" {
  name         = "aws-vpc"
  organization = tfe_organization.demodan.name
  tag_names = [
    "aws",
    "vpc",
    "terraform",
  ]
}