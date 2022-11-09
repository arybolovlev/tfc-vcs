output "bool" {
  value = false
}

output "secret" {
  value = "s3kr3tPassword007"
  sensitive = true
}

output "random_strings" {
  value = random_string.this.*.result
}

output "issue" {
  value = tomap({
  a = "b"
  c = "d"
})
}
