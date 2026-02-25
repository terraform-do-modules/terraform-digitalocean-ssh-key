# Architecture — terraform-digitalocean-ssh-key

## Overview

This module registers an SSH public key with your DigitalOcean account. The registered key can then be referenced when creating Droplets, allowing passwordless SSH access to the root or sudo user at first boot. DigitalOcean injects the public key into the Droplet's `authorized_keys` file during provisioning.

The module creates one `digitalocean_ssh_key` resource, gated by the `enable_ssh_key` flag.

## How SSH Keys Are Used in DigitalOcean

When a Droplet is created, one or more registered SSH key IDs are supplied to the API. DigitalOcean places the corresponding public keys into `/root/.ssh/authorized_keys` (or the equivalent for the default user) during initial cloud-init. This is the primary mechanism for administrator access; password authentication is typically disabled by default on DigitalOcean Droplets for security.

The public key is stored by DigitalOcean and identified by name and fingerprint. It can be attached to multiple Droplets. Deleting the key from DigitalOcean does not remove it from already-provisioned Droplets.

## Public Key Sources

The module accepts the public key in two ways (evaluated in this order in `main.tf`):

1. **Inline content** via the `ssh_key` variable — supply the full public key string directly.
2. **File path** via the `key_path` variable — supply a path to a `.pub` file on the machine running Terraform/OpenTofu (e.g., `~/.ssh/id_rsa.pub`).

## Best Practices

### Separate Keys per Environment and Team

Provision distinct SSH key pairs for each environment (development, staging, production) and for each team or individual. This limits the blast radius if a private key is compromised: rotating a single key does not require touching all environments.

Suggested naming convention: `<team>-<environment>` (e.g., `devops-prod`, `cicd-staging`).

### Never Store Private Keys in Terraform State

Terraform and OpenTofu state files record every attribute of every resource. Only the **public** key is passed to this module and stored in state. The corresponding **private** key must never be placed in a variable, output, or resource attribute that Terraform manages. Keep private keys in a secrets manager (e.g., HashiCorp Vault, AWS Secrets Manager, 1Password) or on the local filesystem of the operator running the plan.

### Key Rotation

To rotate a key:

1. Generate a new key pair outside of Terraform.
2. Update the `ssh_key` or `key_path` input with the new public key.
3. Apply the change — DigitalOcean will replace the registered public key. Existing Droplets are not updated automatically; you must manually update `authorized_keys` on running Droplets.

## Operational Checklist

- Generate key pairs with a strong algorithm (Ed25519 or RSA-4096) and protect private keys with a passphrase.
- Store private keys in a secrets manager; never commit them to version control.
- Use one key registration per environment or team role; avoid sharing a single key across all environments.
- Reference the key's `id` output when creating Droplets (via `ssh_keys` argument on `digitalocean_droplet`).
- Audit registered keys periodically and remove unused ones from the DigitalOcean account.
- When `enable_ssh_key = false`, the resource is not created and the outputs will be empty strings; downstream Droplet references must handle this gracefully.
