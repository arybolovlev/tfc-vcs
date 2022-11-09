variable "issue" {
  type = map(object({
    cidr_block = string
    subnets    = map(object({ cidr_block = string }))
  }))
}


output "issue" {
  value = var.issue
}
