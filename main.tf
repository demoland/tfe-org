resource "tfe_workspace" "this" {
  for_each     = var.workspaces
  name         = each.key
  organization = each.value.org
  project_id   = each.value.project_id
  auto_apply   = each.value.auto_apply
  vcs_repo {
    identifier     = "${each.value.vcs.org}/${each.value.vcs.repo}"
    branch         = each.value.vcs.branch
    oauth_token_id = each.value.vcs.provider == "github" ? var.github_token_id : var.gitlab_token_id
  }
  working_directory = each.value.working_directory
}
