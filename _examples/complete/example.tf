provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "ssh-key" {
  source         = "../../"
  key_path       = "~/.ssh/id_rsa.pub"
  key_name       = "devops"
  enable_ssh_key = true
}
