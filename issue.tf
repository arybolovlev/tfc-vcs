variable "issue" {
  type = object({
    string = string
    list   = list(string)
  })

  default = {
      string = "text"
      list   = []
    }
  
}

output "issue" {
  value = var.issue
}
