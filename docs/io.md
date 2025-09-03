## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enable\_ssh\_key | A boolean flag to enable/disable ssh key. | `bool` | `true` | no |
| key\_name | Name  (e.g. `it-admin` or `devops`). | `string` | `""` | no |
| key\_path | Name  (e.g. `~/.ssh/id_rsa.pub` or `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`). | `string` | `""` | no |
| ssh\_key | SSH key | `string` | `"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2Nv42WHrrdN3dugCAmoVrnNBlqXhRNo1bqsKGgqM/3VfzNzJ7W5eSZdFGsNhGx2WgSaBldcxokpPihGBrBgk8OzmPiWD3X+MGDwQUTdLkRrRPYKKs7i+ZKn5t+1KiBubLxK1hL3q4wgsrth9lepC7mSZwFk3FzHkXfwRswQ5fqFSaHS0G+JwK6Glf1ZKOoogQEPGa3YYUChfAGhjXb8KxtoKqYwfSny2VYEUBK16AfAHDljpkopmF5HYlTC0Z1PfGsZ1EhtCoi7+bEAUzrAby/yLICyEbuQxtasL9llSk+kohalxEeg7fobjybzLNdseXy/JM0wSHqmdM3DF894Od demo@clouddrove"` | no |

## Outputs

| Name | Description |
|------|-------------|
| fingerprint | The fingerprint of the SSH key. |
| id | The unique ID of the key. |
| name | The name of the SSH key. |
| public\_key | The text of the public key. |

