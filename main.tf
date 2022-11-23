resource "random_string" "this" {
  count = var.cm_secret

  length   = var.counter[count.index]
  lower    = true
  numeric  = true
  special  = false
  upper    = true
}
