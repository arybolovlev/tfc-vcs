resource "random_string" "this" {
  count = var.counter

  length  = var.string_length
  lower   = true
  number  = true
  special = false
  upper   = true
}
