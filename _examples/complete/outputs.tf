output "name" {
  value       = module.ssh-key.*.name
  description = "Name of SSH key."
}

output "id" {
  value       = module.ssh-key.*.id
  description = "The unique ID of the key."
}

output "public_key" {
  value       = module.ssh-key.*.public_key
  description = "The text of the public key."
}
