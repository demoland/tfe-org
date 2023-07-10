
variable "projects" {
  description = "A map of projects"
  type = map(object({
    organization = string
  }))
}

variable "terraform_token" {
  description = "Terraform Token"
  type        = string
  sensitive   = true
}