output "db_password" {
  description = "The master password for the database"
  value       = random_string.password.result
}

