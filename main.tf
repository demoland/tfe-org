
resource "tfe_organization" "this" {
  name  = var.name
  email = var.email
}

resource "tfe_project" "this" {
  name         = var.name
  organization = tfe_organization.this.name
}

# resource "tfe_oauth_client" "test" {
#   name             = "${var.project_name}-github-oauth-client"
#   organization     = "${var.project_name}-org-name"
#   api_url          = "https://api.github.com"
#   http_url         = "https://github.com"
#   oauth_token      = var.gh_token
#   service_provider = "github"
# }

# resource "tfe_workspace" "this" {
#   name         = var.workspace_name
#   organization = tfe_organization.this.name
#   project_id = tfe_project.this.id
#   vcs_repo {
#     identifier     = var.vcs_repo_identifier
#     oauth_token_id = var.oauth_token_id
#     branch = "main"

#   }
#   tag_names = [
#     "aws",
#     "vpc",
#     "terraform",
#   ]
# }
