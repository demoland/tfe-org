resource "tfe_workspace" "this" {
  for_each     = var.workspaces
  name         = each.key
  organization = each.value.org
  vcs_repo {
    identifier     = "${each.value.vcs.org}/${each.value.vcs.repo}"
    branch         = each.value.vcs.branch
    oauth_token_id = "ot-n6qt54hjW6DTX6Wt" 
  }
  file_triggers_enabled = each.value.vcs.file_triggers_enabled
}