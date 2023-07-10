data "terraform_remote_state" "projects" {
  backend = "remote"

  config = {
    organization = "hashicorp-federal"
    workspaces = {
      name = "aws-projects"
    }
  }
}
