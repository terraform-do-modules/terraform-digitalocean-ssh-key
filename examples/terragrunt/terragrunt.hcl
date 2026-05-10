##------------------------------------------------------------
## Terragrunt configuration for DigitalOcean SSH Key
##
## Prerequisites:
##   - Terragrunt >= 0.55.0  (https://terragrunt.gruntwork.io)
##   - OpenTofu >= 1.6.0     (https://opentofu.org)
##     OR Terraform >= 1.5.4 (https://terraform.io)
##   - DIGITALOCEAN_TOKEN env var set
##   - SPACES_ACCESS_KEY_ID and SPACES_SECRET_ACCESS_KEY set (for remote state)
##   - TF_VAR_ssh_public_key env var set to your SSH public key string
##     e.g. export TF_VAR_ssh_public_key="$(cat ~/.ssh/id_rsa.pub)"
##
## Deploy:
##   terragrunt init
##   terragrunt plan
##   terragrunt apply
##
## Destroy:
##   terragrunt destroy
##------------------------------------------------------------

locals {
  region      = "nyc3"
  environment = "prod"
  project     = "myapp"
}

##------------------------------------------------------------
## Remote state stored in DigitalOcean Spaces (S3-compatible)
## Create the Spaces bucket before running terragrunt init
##------------------------------------------------------------
remote_state {
  backend = "s3"

  config = {
    endpoint = "https://${local.region}.digitaloceanspaces.com"
    # DO Spaces requires a dummy AWS region value
    region = "us-east-1"
    bucket = "${local.project}-terraform-state"
    key    = "${path_relative_to_include()}/terraform.tfstate"

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

##------------------------------------------------------------
## Source module from GitHub
## Pin to a specific tag for production stability
##------------------------------------------------------------
terraform {
  source = "git::https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key.git//?ref=v1.0.0"

  ##------------------------------------------------------------
  ## Use OpenTofu instead of Terraform (optional)
  ## Uncomment the block below and set TERRAGRUNT_TFPATH or
  ## set the terraform_binary in your root terragrunt.hcl
  ##------------------------------------------------------------
  # extra_arguments "use_opentofu" {
  #   commands = get_terraform_commands_that_need_vars()
  # }
}

##------------------------------------------------------------
## Provider generation — avoids repeating provider
## blocks in every child module
##------------------------------------------------------------
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOF
    provider "digitalocean" {}
  EOF
}

##------------------------------------------------------------
## Module inputs
## ssh_key is read from an environment variable to avoid storing
## the public key in source control. Set the env var before running:
##   export SSH_PUBLIC_KEY="$(cat ~/.ssh/id_rsa.pub)"
##------------------------------------------------------------
inputs = {
  enable_ssh_key = true
  key_name       = "${local.project}-${local.environment}"
  ssh_key        = get_env("SSH_PUBLIC_KEY", "")
}
