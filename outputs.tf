output "random_string" {
  value = random_string.this.*.result
}

output "object" {
  value = {
    "a" = "1"
    "b" = "2"
    "c" = [
      3.1,
      3.2,
      3.3,
    ]
  }
}

output "map" {
  value = {
    "a" = "1"
    "b" = "2"
    "c" = "3"
  }
}

output "bool" {
  value = false
}

output "list" {
  value = ["a", 1]
}

output "json" {
  value = var.json
}

output "json2" {
  value = var.json
}


output "secret" {
  value = "s3kr3t"
  sensitive = true
}

output "string_length" {
  value = var.string_length
}
