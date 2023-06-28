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
      file_triggers_enabled = boolean
      tag = string
    }))
  }))
  default = map(object({
    description = "Default Organization Text"
    org = "demo-land"
    project = "Default"
    vcs = map(object({
      org = "demoland"
      repo = "TEST-DEFAULT"
      branch = "main"
      provider = "github"
      file_triggers_enabled = false
      tag = ""
    }))
  }))
}

variable "tokens" {
  sensitive   = true
  description = "A map of Git Tokens"
  type = map(object({
    github = string
    gitlab = string
    terraform = string
  }))
}