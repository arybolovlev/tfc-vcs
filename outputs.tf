# output "random_string" {
#     value = random_string.this.*.result
#   }
  
#   output "object" {
#     value = {
#       "a" = "1"
#       "b" = "2"
#       "c" = [
#         3.1,
#         3.2,
#         3.3,
#       ]
#     }
#   }
  
#   output "map" {
#     value = {
#       "a" = "1"
#       "b" = "2"
#       "c" = "3"
#     }
#   }
  
output "bool" {
  value = false
}
  
#   output "list" {
#     value = [1, 2, 4, 8, 16, 32]
#   }
  
#   output "counter" {
#     value = var.counter
#   }
  
#   output "json" {
#     value = var.json
#   }
  
output "secret" {
  value = "s3kr3tPassword007"
  sensitive = true
}
  
#   output "string_length" {
#     value = var.string_length
#   }
  
