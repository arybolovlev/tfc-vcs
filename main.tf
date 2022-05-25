resource "random_string" "this" {
  length  = var.string_length
  lower   = true
  number  = true
  special = false
  upper   = true
}

# resource "tfe_organization" "this" {
#   name  = "netcow"
#   # email = "asr@netcow.org"
# }

resource "tfe_workspace" "test" {
  name         = random_string.this.result
  organization = var.tfc_org_name
  tag_names = [
    "sre",
    "lab",
  ]
}
