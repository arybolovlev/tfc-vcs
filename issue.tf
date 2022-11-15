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

variable "issue_2" {
  type = object({
    string = string
    list   = list(string)
  })

  default = {
      string = "text"
      list   = ["een", "twee"]
    }
  
}

output "issue_2" {
  value = var.issue_2
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

#####

output "string" {
  value = "string"
}


#####

variable "list" {
  type = list(string)

  default = ["een", "twee"]
  
}

output "list" {
  value = var.list
}


#####

variable "map" {
  type = map

  default = {
    "one" = "een"
    "two" = "twee"
  }
  
}

output "map" {
  value = var.map
}
