resource "random_string" "this" {
  length  = var.string_length
  lower   = true
  number  = true
  special = false
  upper   = true
}
