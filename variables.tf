variable "workspaces" {
  description = "A map of all workspaces"
  type = map(object({
    description         = string
    org                 = string
    project_id          = string
    working_directory   = string
    trigger_prefixes    = list(string)
    global_remote_state = bool
    auto_apply          = bool
    vcs = object({
      org      = string
      repo     = string
      branch   = string
      provider = string
      tag      = string
    })
  }))
  default = {
    "default_workspace" = {
      description         = "Default Organization Text"
      org                 = "demo-land"
      project_id          = "prj-Ken41UUB8yVPmjv5"
      working_directory   = "/"
      trigger_prefixes    = ["/"]
      global_remote_state = true
      auto_apply          = true
      vcs = {
        org      = "demoland"
        repo     = "TEST-DEFAULT"
        branch   = "main"
        provider = "github"
        tag      = ""
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
  default     = "ot-n6qt54hjW6DTX6Wt"
}

variable "gitlab_token_id" {
  description = "GitLab OAuth Token ID"
  type        = string
  default     = "ot-WRvVKkLDVi8hu7Jc"
}
