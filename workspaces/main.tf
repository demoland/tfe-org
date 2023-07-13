locals {
  projects = data.terraform_remote_state.projects.outputs.projects
}

resource "tfe_workspace" "this" {
  for_each              = var.workspaces
  name                  = each.key
  organization          = each.value.org
  project_id            = local.projects[each.value.project_name]
  auto_apply            = each.value.auto_apply
  global_remote_state   = each.value.global_remote_state
  file_triggers_enabled = each.value.file_triggers_enabled
  working_directory     = each.value.working_directory
  trigger_prefixes      = each.value.trigger_prefixes

  vcs_repo {
    identifier     = "${each.value.vcs.org}/${each.value.vcs.repo}"
    branch         = each.value.vcs.branch
    oauth_token_id = each.value.vcs.provider == "github" ? var.github_token_id : var.gitlab_token_id
  }

}
