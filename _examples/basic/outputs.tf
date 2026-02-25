# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------
output "name" {
  value       = module.ssh-key[*].name
  description = "Name of the SSH key."
}

output "id" {
  value       = module.ssh-key[*].id
  description = "The unique ID of the SSH key."
}
