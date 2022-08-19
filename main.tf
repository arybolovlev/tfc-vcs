resource "time_sleep" "wait" {
  create_duration = "2m"
}

resource "random_string" "this" {
  count = length(var.counter)

  length  = var.counter[count.index]
  lower   = true
  number  = true
  special = false
  upper   = true
  
  depends_on = [
    time_sleep.wait
  ]
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
