output "organizations" {
  value = { for k, v in tfe_organizations.this : k => v.email }
}