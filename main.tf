resource "random_string" "this" {
  count = length(var.counter)

  length   = var.counter[counter.index]
  lower    = true
  numeric  = true
  special  = false
  upper    = true
}
