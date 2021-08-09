#Module      : SSH KEY
#Description : Provides a DigitalOcean SSH key resource to allow you to manage SSH keys for Droplet access.

variable "key_path" {
  type        = string
  default     = ""
  description = "Name  (e.g. `~/.ssh/id_rsa.pub` or `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`)."
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
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2Nv42WHrrdN3dugCAmoVrnNBlqXhRNo1bqsKGgqM/3VfzNzJ7W5eSZdFGsNhGx2WgSaBldcxokpPihGBrBgk8OzmPiWD3X+MGDwQUTdLkRrRPYKKs7i+ZKn5t+1KiBubLxK1hL3q4wgsrth9lepC7mSZwFk3FzHkXfwRswQ5fqFSaHS0G+JwK6Glf1ZKOoogQEPGa3YYUChfAGhjXb8KxtoKqYwfSny2VYEUBK16AfAHDljpkopmF5HYlTC0Z1PfGsZ1EhtCoi7+bEAUzrAby/yLICyEbuQxtasL9llSk+kohalxEeg7fobjybzLNdseXy/JM0wSHqmdM3DF894Od demo@clouddrove"
  description = "SSH key"
}
