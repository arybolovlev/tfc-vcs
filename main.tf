resource "time_sleep" "this" {
  create_duration = "2m"
  
  depends_on = [
    random_string.this
  ]
}

resource "random_string" "this" {
  count = length(var.counter)

  length  = var.counter[count.index]
  lower   = true
  number  = true
  special = false
  upper   = true
}

variable "remote_state" {
  default = false
}

data "terraform_remote_state" "this" {
  count = var.remote_state ? 1 : 0
  backend = "remote"

  config = {
    organization = "strategic-integrations"
    workspaces = {
      name = "rybolovlev-workspace"
    }
  }
}

output "remote_state" {
  value = data.terraform_remote_state.this
}
