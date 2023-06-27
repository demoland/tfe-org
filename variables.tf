variable "workspaces" {
  description = "A map of all workspaces"
  type = map(object({
    description = string
    org         = string
    project     = string
    vcs = map(object({
      org      = string
      repo     = string
      branch   = string
      provider = string
      tag      = string
    }))
  }))
}

variable "tokens" {
  sensitive   = true
  description = "A map of Git Tokens"
  type = map(object({
    github = string
    gitlab = string
  }))
}