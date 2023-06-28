workspaces = [
  magical-mystery = {
    description = "Here lies a module for generating multiple aws vpcs"
    org      = "demo-land"
    project = "MDA"
    vcs = {
        org = "demoland"
        repo = "aws-vpc-testing"
        branch = "main"
        provider = "gitlab"
        tag = "default"
        file_triggers_enabled = false
    }
  }
]