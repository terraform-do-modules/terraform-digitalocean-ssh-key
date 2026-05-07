provider "digitalocean" {
  # Set DIGITALOCEAN_TOKEN in your environment before running.
  # export DIGITALOCEAN_TOKEN="your-api-token"
}

##------------------------------------------------
## ssh-key module call — minimal basic example
## Registers a single SSH public key using a key file path.
##------------------------------------------------
module "ssh-key" {
  source         = "../../"
  key_name       = "basic-key"
  key_path       = "~/.ssh/id_rsa.pub"
  enable_ssh_key = true
}
