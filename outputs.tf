output "random_string" {
  value = random_string.this.result
}

output "map" {
  value = {
    "a" = "1"
    "b" = "2"
    "c" = "3"
  }
}
