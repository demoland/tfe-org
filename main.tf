resource "tfe_organization" "demodan" {
  name  = "DEMODAN"
  email = "daniel.fedick@hashicorp.com"
}

resource "tfe_project" "demo_project" {
  organization = tfe_organization.demodan.name
  name         = "demodan"
}
