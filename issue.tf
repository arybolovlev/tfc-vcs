variable "number" {
  type = number
  default = 5
}

output "number" {
  value = var.number
}

variable "bool" {
  type = bool
  default = false
}

output "bool" {
  value = var.bool
}

variable "null_map" {
  type = map
  default = null
}

output "null_map" {
  value = var.null_map
}

variable "null" {
  default = null
}

output "null" {
  value = var.null
}

#####

# variable "issue" {
#   type = object({
#     string = string
#     list   = list(string)
#   })

#   default = {
#       string = "text"
#       list   = []
#     }
  
# }

# output "issue" {
#   value = var.issue
# }

# #####

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


# #####

# variable "no_issue" {
#   type = object({
#     string = string
#     list   = list(string)
#   })

#   default = {
#       string = "text"
#       list   = ["een"]
#     }
  
# }

# output "no_issue" {
#   value = var.no_issue
# }

# #####

# output "string" {
#   value = "string"
# }


# #####

# variable "list" {
#   type = list(string)

#   default = ["een", "twee"]
  
# }

# output "list" {
#   value = var.list
# }

# #####

variable "list_int" {
  type = list(number)
  default = [1, 2]
}

output "list_int" {
  value = var.list_int
}

# #####

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

# #####

# variable "map_list" {
#   type = map(list(string))

#   default = {
#     "one" = ["een", "1"]
#     "two" = ["twee", "2"]
#   }
  
# }

# output "map_list" {
#   value = var.map_list
# }


# #####

# variable "empty_list" {
#   type = list(string)

#   default = []
  
# }

# output "empty_list" {
#   value = var.empty_list
# }


# #####

# variable "empty_map" {
#   type = map

#   default = {}
  
# }

# output "empty_map" {
#   value = var.empty_map
# }

# #####

# variable "empty_map_value" {
#   type = map

#   default = {
#     "key" = null
#   }
  
# }

# output "empty_map_value" {
#   value = var.empty_map_value
# }

# #####

# variable "empty_map_key" {
#   type = map

#   default = {
#     "" = "value"
#   }
  
# }

# output "empty_map_key" {
#   value = var.empty_map_key
# }

# #####

# variable "null_map" {
#   type = map

#   default = null
  
# }

# output "null_map" {
#   value = var.null_map
# }

# #####

# variable "tuple_complex" {
#   type = tuple(
#     [
#       object({
#         data = map(list(string))
#       })
#     ]
#   )

#   default = [
#     {
#       data = null
# #       data = {
# #         "key" = []
# #       }
#     }
#   ]
  
# }

# output "tuple_complex" {
#   value = var.tuple_complex
# }
