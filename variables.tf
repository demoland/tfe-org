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

variable "vcs_repo_identifier" {
  type = string
  default = "demoland/aws-vpc"
}
