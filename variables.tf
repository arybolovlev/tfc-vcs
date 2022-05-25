variable "string_length" {
  default = 8
}

variable "tfc_org_name" {
  description = "Terraform Cloud Platform Organisation Name"
  type        = string
  default     = ""
}

variable "tfc_token" {
  description = "Terraform Cloud Platform Token"
  type        = string
  default     = ""
}
