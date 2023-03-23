
resource "tfe_organization" "this" {
  name  = var.name
  email = var.email
}

resource "tfe_project" "this" {
  name         = var.name
  organization = tfe_organization.this.name
}

resource "tfe_workspace" "this" {
  name         = var.workspace_name
  organization = tfe_organization.this.name
  project_id = tfe_project.this.id
  vcs_repo {
    identifier     = var.vcs_repo_identifier
    branch = "main"
  }
  tag_names = [
    "aws",
    "vpc",
    "terraform",
  ]
}
