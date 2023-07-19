
workspaces = {
  aws-rke = {
    description           = "AWS RGS RKE2"
    org                   = "demo-land"
    working_directory     = "/"
    project_name          = "RGS-RKE"
    file_triggers_enabled = true
    trigger_patterns      = ["**/*"]
    global_remote_state   = true

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
    description           = "HashiStack"
    org                   = "demo-land",
    working_directory     = "aws/"
    project_name          = "HASHISTACK"
    file_triggers_enabled = true
    trigger_patterns      = ["aws/**/*"]
    global_remote_state   = true
    auto_apply            = true
    vcs = {
      org      = "demoland",
      repo     = "hashistack",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  },
  aws-kms = {
    description           = "AWS KMS",
    org                   = "demo-land",
    working_directory     = "kms/",
    project_name          = "HASHISTACK",
    file_triggers_enabled = true
    trigger_patterns      = ["kms/**/*"],
    global_remote_state   = true,
    auto_apply            = true,
    vcs = {
      org      = "demoland",
      repo     = "hashistack",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  },
  aws-vpc = {
    description           = "AWS VPC",
    org                   = "demo-land",
    working_directory     = "/",
    project_name          = "HASHISTACK",
    file_triggers_enabled = true
    trigger_patterns      = ["**/*"],
    global_remote_state   = true,
    auto_apply            = true,
    vcs = {
      org      = "demoland",
      repo     = "aws-vpc",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  },
  hashidns = {
    description           = "HashiCorp DNS"
    org                   = "demo-land",
    working_directory     = "/",
    project_name          = "HASHISTACK",
    file_triggers_enabled = true
    trigger_patterns      = ["**/*"],
    global_remote_state   = true,
    auto_apply            = true,
    vcs = {
      org      = "demoland",
      repo     = "hashidns",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  },
  voltron-boundary = {
    description           = "Voltron Boundary Cluster"
    org                   = "demo-land",
    working_directory     = "/deployment/aws",
    project_name          = "VOLTRON",
    file_triggers_enabled = true
    trigger_patterns      = ["deployment/aws/**/*"],
    global_remote_state   = true,
    auto_apply            = true,
    vcs = {
      org      = "demoland",
      repo     = "voltron-zt",
      branch   = "main",
      provider = "github",
      tag      = "default",
    }
  }
}


