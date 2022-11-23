resource "random_string" "this" {
  count = var.cm_secret

  length   = "${count.index + 5}"
  lower    = true
  numeric  = true
  special  = false
  upper    = true
}
