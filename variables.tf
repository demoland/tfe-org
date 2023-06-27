variable "workspaces" {
  description = "A map of all workspaces"
  type = map(object({
    name = string
    description = string
    org      = string
    vcs_repo = map(object({
      identifier = string
      branch = string
      oauth_token_id = string
    }))
  }))
}

variable "token" {
  sensitive = true
}