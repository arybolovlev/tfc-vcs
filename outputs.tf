output "random_string" {
  value = random_string.this.result
}

output "map" {
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

output "bool" {
  value = false
}

output "list" {
  value = ["a", 1]
}
