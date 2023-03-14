
resource "tfe_organization" "this" {
  name  = var.org_name
  email = var.email
}

resource "tfe_project" "this" {
  name         = var.project_name
  organization = tfe_organization.this.name
}

resource "tfe_workspace" "this" {
  name         = var.workspace_name
  organization = tfe_organization.this.name
  project_id = tfe_project.this.id
  tag_names = [
    "aws",
    "vpc",
    "terraform",
  ]
}
