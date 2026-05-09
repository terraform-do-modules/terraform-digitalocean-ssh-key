#Module      : SSH KEY
#Description : Provides a DigitalOcean SSH key resource to allow you to manage SSH keys for Droplet access.

variable "key_path" {
  type        = string
  default     = ""
  description = "Path to the SSH public key file on disk (e.g. `~/.ssh/id_rsa.pub`)."
}

variable "key_name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `it-admin` or `devops`)."

}
variable "enable_ssh_key" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable ssh key."

}
variable "ssh_key" {
  type        = string
  default     = ""
  description = "SSH public key content (e.g. `ssh-rsa AAAAB3NzaC1yc2E...`). If not provided, key_path will be used."
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "List of tags to apply to the SSH key resource."
}
