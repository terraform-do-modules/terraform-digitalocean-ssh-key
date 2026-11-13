## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enable\_ssh\_key | A boolean flag to enable/disable ssh key. | `bool` | `true` | no |
| key\_name | Name  (e.g. `it-admin` or `devops`). | `string` | `""` | no |
| key\_path | Name  (e.g. `~/.ssh/id_rsa.pub` or `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`). | `string` | `""` | no |
| ssh\_key | SSH public key content (e.g. `ssh-rsa AAAAB3NzaC1yc2E...`). If not provided, key\_path will be used. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| fingerprint | The fingerprint of the SSH key. |
| id | The unique ID of the key. |
| name | The name of the SSH key. |
| public\_key | The text of the public key. |

