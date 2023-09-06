resource "random_pet" "username" {
  length    = var.username_length
  separator = "_"
}

resource "random_string" "secret" {
  length  = var.secret_length
  lower   = true
  numeric = true
  special = false
  upper   = true
}
