resource "time_sleep" "this" {
  create_duration = "2m"
  
  depends_on = [
    random_string.this
  ]
}
