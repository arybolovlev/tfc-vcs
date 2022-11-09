variable "issue" {
  type = map(object({
    cidr_block = string
    subnets    = map(object({
  a = "b"
  c = "d"
  e = []
}))
  }))
}

output "issue" {
  value = var.issue
}
