resource "random_string" "this" {
  count = length(var.counter)

  length  = var.counter[count.index]
  lower   = true
  number  = true
  special = false
  upper   = true
}
