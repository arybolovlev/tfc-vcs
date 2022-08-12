resource "random_string" "this" {
  count = length(var.counter)

  length  = count.index
  lower   = true
  number  = true
  special = false
  upper   = true
}
