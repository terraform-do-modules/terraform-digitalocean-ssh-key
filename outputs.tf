#Module      : SSH KEY
#Description : Provides a DigitalOcean SSH key resource to allow you to manage SSH keys for Droplet access.
output "id" {
  value       = join("", digitalocean_ssh_key.default[*].id)
  description = "The unique ID of the key."
}

output "name" {
  value       = join("", digitalocean_ssh_key.default[*].name)
  description = "The name of the SSH key."
}

output "public_key" {
  value       = join("", digitalocean_ssh_key.default[*].public_key)
  description = "The text of the public key."
}

output "fingerprint" {
  value       = join("", digitalocean_ssh_key.default[*].fingerprint)
  description = "The fingerprint of the SSH key."
}