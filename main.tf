variable "org_name" {
  type = string
  default = "ALOHA"
}

variable "email" {
  type = string
  default = "daniel.fedick@hashicorp.com"
}

variable "project_name" {
  type = string
  default = "ALOHA"
}

variable "workspace_name" {
  type = string
  default = "ALOHA"
}

####
resource "tfe_organization" "to" {
  name  = var.org_name
  email = var.email
}

resource "tfe_project" "tp" {
  name         = var.project_name
  organization = tfe_organization.to.name
}

resource "tfe_workspace" "tw" {
  name         = var.workspace_name
  organization = tfe_organization.to.name
  project_id = tfe_project.tp.id
  tag_names = [
    "aws",
    "vpc",
    "terraform",
  ]
}