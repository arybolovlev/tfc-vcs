variable "issue" {
  type = object({
    name     = string
    size     = string
    username = string
    password = string
    list     = list(string)
  })

  default = {
      name     = "example-vm"
      size     = "Standard_F2"
      username = "adminuser"
      password = "Notallowed1!"
      list     = []
    }
  
}


output "issue" {
  value = var.issue
}
