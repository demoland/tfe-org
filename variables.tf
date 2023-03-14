variable "token" {
  type        = string
  description = "The token to use for authentication with the Terraform Enterprise API."
}

variable "org_name" {
  type = string
  default = "blue-aloha"
}

variable "email" {
  type = string
  default = "daniel.fedick@hashicorp.com"
}

variable "project_name" {
  type = string
  default = "blue-aloha"
}

variable "workspace_name" {
  type = string
  default = "aws-vpc"
}
 