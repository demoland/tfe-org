organizations = {
  demoland = {
    email = "daniel.fedick@hashicorp.com"
  }
}

projects = {
  HASHISTACK = {
    organization = "demoland"
  }
}

workspaces = {
  aws-rke = {
    description         = "AWS RGS RKE2"
    org                 = "demo-land",
    project_id          = "prj-8uUTAWg1ar7Z8LTN",
    working_directory   = "/"
    trigger_prefixes    = ["/"]
    global_remote_state = true
    auto_apply          = true
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
    project_id          = "prj-Ken41UUB8yVPmjv5",
    working_directory   = "aws/"
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
    project_id          = "prj-Ken41UUB8yVPmjv5",
    working_directory   = "kms/"
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


