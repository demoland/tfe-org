variable "token" {
  type        = string
  description = "The token to use for authentication with the Terraform Enterprise API."
}

variable "name" {
  type = string
}

variable "email" {
  type = string
  default = "daniel.fedick@hashicorp.com"
}

/*
variable "vcs_repo_identifier" {
  type = string
  default = "demoland/aws-vpc"
}

variable "gh_token" {
  type = string
  sensitive = true
  description = "The GitHub token to use for authentication with the Terraform Enterprise API.  This token needs to have a broad enough scope to cover all of the repositories that will be used with this organization."
}
*/
