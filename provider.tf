terraform {
  required_version = "~> 1.4.0"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.42.0"
    }
    # github = {
    #   source  = "integrations/github"
    #   version = "5.0"
    # }
  }
}

provider "tfe" {
  token = var.token
}

# provider "github" {
#   token = var.token # or `GITHUB_TOKEN`
#   organization = var.gh_organization
# }

