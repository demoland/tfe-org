variable "organizations" {
  description = "A map of organizations"
  type = map(object({
    email = string
  }))
}

variable "terraform_token" {
  description = "Terraform Token"
  type        = string
  sensitive   = true
}
