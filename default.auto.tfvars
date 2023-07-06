workspaces = {
  # magical-mystery = {
  #   description       = "Here lies a module for generating multiple aws vpcs",
  #   org               = "demo-land",
  #   project           = "MDA",
  #   working_directory = "/"
  #  auto_apply = true
  #   vcs = {
  #     org                   = "demoland",
  #     repo                  = "aws-vpc-testing",
  #     branch                = "main",
  #     provider              = "gitlab",
  #     tag                   = "default",
  #   }
  # },
  hashistack = {
    description       = "HashiStack"
    org               = "demo-land",
    project_id        = "prj-hNRu8PsA4i94SMrD",
    working_directory = "aws/"
    auto_apply = true
    vcs = {
      org                   = "demoland",
      repo                  = "hashistack",
      branch                = "main",
      provider              = "github",
      tag                   = "default",
    }
  },
  aws-rke = {
    description       = "AWS RGS RKE2"
    org               = "demo-land",
    project_id        = "prj-8uUTAWg1ar7Z8LTN",
    working_directory = "/"
    auto_apply = true
    vcs = {
      org                   = "RGS-HASHI",
      repo                  = "aws-rke",
      branch                = "main",
      provider              = "gitlab",
      tag                   = "default",
    }
  }
}
