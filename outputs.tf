output "workspaces" {
  for_each = tfe_workspace.this  
    value = { each.value.name = each.value.id }
}