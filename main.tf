resource "random_string" "this" {
  count = length(var.counter)

  length  = count.value
  lower   = true
  number  = true
  special = false
  upper   = true
}
