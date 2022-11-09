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

#####

variable "no_issue" {
  type = object({
    string = string
    list   = list(string)
  })

  default = {
      string = "text"
      list   = ["een"]
    }
  
}

output "no_issue" {
  value = var.no_issue
}
