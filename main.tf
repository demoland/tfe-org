resource "tfe_workspace" "this" {
  for_each     = var.workspaces
  name         = each.key
  organization = each.value.org
  vcs_repo {
    identifier     = "${each.value.vcs.org}/${each.value.vcs.repo}"
    branch         = each.value.vcs.branch
    # oauth_token_id = each.value.vcs.provider == "github" ? var.github_token : var.gitlab_token
  }
  file_triggers_enabled = each.value.vcs.file_triggers_enabled
}