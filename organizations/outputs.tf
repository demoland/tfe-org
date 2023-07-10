output "organizations" {
  value = { for k, v in tfe_organization.this : k => v.email }
}