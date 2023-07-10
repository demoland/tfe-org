
workspaces = {
  aws-rke = {
    description         = "AWS RGS RKE2"
    org                 = "demo-land"
    working_directory   = "/"
    project_name        = "RGS-RKE"
    trigger_prefixes    = ["/"]
    global_remote_state = true

    auto_apply = true
    vcs = {
      org      = "RGS-HASHI",
      repo     = "aws-rke",
      branch   = "main",
      provider = "gitlab",
      tag      = "default",
    }
  },
  hashistack = {
    description         = "HashiStack"
    org                 = "demo-land",
    working_directory   = "aws/"
    project_name        = "HASHISTACK"
    trigger_prefixes    = ["aws/"]
    global_remote_state = true
    auto_apply          = true
    vcs = {
      org      = "demoland",
      repo     = "hashistack",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  },
  aws-kms = {
    description         = "AWS KMS"
    org                 = "demo-land",
    working_directory   = "kms/"
    project_name        = "HASHISTACK"
    trigger_prefixes    = ["kms/"]
    global_remote_state = true
    auto_apply          = true
    vcs = {
      org      = "demoland",
      repo     = "hashistack",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  }
}


