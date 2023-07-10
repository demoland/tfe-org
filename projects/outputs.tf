output "projects" {
  value = { for k, v in tfe_project.this : k => v.id }
}