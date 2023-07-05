workspaces = {
  magical-mystery = {
    description = "Here lies a module for generating multiple aws vpcs",
    org         = "demo-land",
    project     = "MDA",
    vcs = {
      org                   = "demoland",
      repo                  = "aws-vpc-testing",
      branch                = "main",
      provider              = "gitlab",
      tag                   = "default",
      file_triggers_enabled = false,
    }
  },
  hashistack = {
    description = "HashiStack"
    org         = "demo-land",
    project     = "HASHISTACK",
    working_directory = "aws/"
    vcs = {
      org                   = "demoland",
      repo                  = "hashistack",
      branch                = "main",
      provider              = "github",
      tag                   = "default",
      file_triggers_enabled = false,
    }
  }
}
