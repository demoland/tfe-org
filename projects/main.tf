resource "tfe_project" "this" {
  for_each     = var.projects
  name         = each.key
  organization = each.value.organization
}