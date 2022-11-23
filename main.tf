resource "random_string" "this" {
  count = length(var.cm_secret)

  length   = var.counter[count.index]
  lower    = true
  numeric  = true
  special  = false
  upper    = true
}
