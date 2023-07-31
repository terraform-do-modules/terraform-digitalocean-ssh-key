#Module      : Label
#Description : This terraform module is designed to generate consistent label names and
#              tags for resources. You can use terraform-labels to implement a strict
#              naming convention.
module "labels" {
  source      = "terraform-do-modules/labels/digitalocean"
  version     = "1.0.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

##---------------------------------------------------------------------------------------------------------
#Description : Provides a DigitalOcean SSH key resource to allow you to manage SSH keys for Droplet access.
##---------------------------------------------------------------------------------------------------------
resource "digitalocean_ssh_key" "default" {
  count      = var.enabled == true ? 1 : 0
  name       = var.key_name == "" ? format("%s-key-%s", module.labels.id, (count.index)) : var.key_name
  public_key = var.ssh_key != "" ? var.ssh_key : file(var.key_path)
}