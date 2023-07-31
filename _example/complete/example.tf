provider "digitalocean" {
}

module "ssh-key" {
  source = "./../../"

  name        = "cd"
  environment = "test"
  key_path    = "~/.ssh/id_rsa.pub"
  key_name    = "devops"
}
