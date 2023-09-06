output "username" {
  value     = random_pet.username.id
  sensitive = false
}

output "secret" {
  value     = random_string.secret.result
  sensitive = true
}
