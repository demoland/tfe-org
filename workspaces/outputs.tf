output "workspaces" {
  value = { for k, v in tfe_workspace.this : k => v.id }
}