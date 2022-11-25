resource "random_string" "this" {
  count = length(var.counter)

  length   = var.counter[count.index]
  lower    = true
  numeric  = true
  special  = false
  upper    = true
}
