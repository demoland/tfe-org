data "tfe_organization" "this" {
  for_each = var.workspaces
  name     = each.value.org
}
