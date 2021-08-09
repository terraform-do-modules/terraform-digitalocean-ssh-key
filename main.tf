## Managed By : CloudDrove
##Description : This Script is used to create SSH Key.
## Copyright @ CloudDrove. All Right Reserved.

#Module      : SSH KEY
#Description : Provides a DigitalOcean SSH key resource to allow you to manage SSH keys for Droplet access.
resource "digitalocean_ssh_key" "default" {
  count = var.enable_ssh_key == true ? 1 : 0

  name       = var.key_name
  public_key = var.ssh_key != "" ? var.ssh_key : file(var.key_path)

}