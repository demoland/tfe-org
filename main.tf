
resource "tfe_organization" "tfeo" {
  name  = var.org_name
  email = var.email
}

# resource "tfe_project" "project" {
#   name         = var.project_name
#   organization = tfe_organization.tfeo.name
# }

# resource "tfe_workspace" "workspace" {
#   name         = var.workspace_name
#   organization = tfe_organization.tfeo.name
#   project_id = tfe_project.project.id
#   tag_names = [
#     "aws",
#     "vpc",
#     "terraform",
#   ]
# }