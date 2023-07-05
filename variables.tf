variable "workspaces" {
  description = "A map of all workspaces"
  type = map(object({
    description       = string
    org               = string
    project           = string
    working_directory = string
    vcs = object({
      org                   = string
      repo                  = string
      branch                = string
      provider              = string
      file_triggers_enabled = bool
      tag                   = string
    })
  }))
  default = {
    "default_workspace" = {
      description       = "Default Organization Text"
      org               = "demo-land"
      project           = "Default"
      working_directory = "/"
      vcs = {
        org                   = "demoland"
        repo                  = "TEST-DEFAULT"
        branch                = "main"
        provider              = "github"
        file_triggers_enabled = false
        tag                   = ""
      }
    }
  }
}

variable "terraform_token" {
  description = "Terraform Token"
  type        = string
  sensitive   = true
}

variable "github_token_id" {
  description = "Github Oauth Token ID"
  type        = string
  default = "ot-n6qt54hjW6DTX6Wt"
}

variable "gitlab_token_id" {
  description = "GitLab OAuth Token ID"
  type        = string
  default = "ot-WRvVKkLDVi8hu7Jc"
}
