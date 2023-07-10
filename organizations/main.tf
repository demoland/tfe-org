resource "tfe_organization" "this" {
  for_each = var.organizations
  name     = each.key
  email    = each.value.email
}
