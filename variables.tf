variable "workspaces" {
  description = "A map of all workspaces"
  type = map(object({
    description = string
    org         = string
    project     = string
    vcs = object({
      org                   = string
      repo                  = string
      branch                = string
      provider              = string
      file_triggers_enabled = bool
      tag                   = string
    })
  }))
}

variable terraform_token {
  default = "yourDefaultTerraformToken"
  type = string
  description = ""
}

variable github_token {
  default =  "yourDefaultGitHubToken"
  type = string
  description = ""
}

variable gitlab_token {
  default = "yourDefaultTerraformToken"
  type = string
  description = ""
}
