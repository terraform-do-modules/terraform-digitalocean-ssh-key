## [v1.0.6] - 2026-03-25
### :wrench: Chores
- [`dc1475b`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/dc1475b09fb0c10baf237a3125c8d78f921cf7b6) - **deps**: bump terraform-linters/setup-tflint from 4 to 6 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`4cc78f0`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/4cc78f0f900681af1d44349c9f10127ee77230bc) - **deps**: bump hashicorp/setup-terraform from 3 to 4 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*


## [v1.0.4] - 2026-03-20
### :sparkles: New Features
- [`42a1c4f`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/42a1c4f26938e4df41fd15bf42724b485c4d6d9a) - update github shared workflows version *(commit by [@anket-cd](https://github.com/anket-cd))*
- [`a49c4be`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/a49c4becd2169fffe02fada8c64d61297c2ad3b8) - test new updated version *(PR [#39](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/pull/39) by [@anket-cd](https://github.com/anket-cd))*

### :bug: Bug Fixes
- [`47688fc`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/47688fc479a3f7d126a2f9c6ccbdbb51644364ee) - revome version validation from relesae changelog workflows *(commit by [@anket-cd](https://github.com/anket-cd))*
- [`6c1acda`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/6c1acdac012c485d965ecce54a6e2f858707430f) - remove job validation *(commit by [@anket-cd](https://github.com/anket-cd))*

### :wrench: Chores
- [`ae4d60d`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/ae4d60d5f89a85e68645f03f436e9abc749a3e3f) - bump DigitalOcean provider to >= 2.79.0 *(PR [#40](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/pull/40) by [@clouddrove-ci](https://github.com/clouddrove-ci))*
- [`e946f26`](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/commit/e946f264286244b6faa931cdaa9ede5d07abffe1) - **ci**: update gitHub shared workflows to latest version and add release changelog workflows *(PR [#44](https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/pull/44) by [@anket-cd](https://github.com/anket-cd))*


## [1.0.3] - 2026-02-25

### 📚 Documentation
- Added `docs/architecture.md` — architecture guidance and operational checklist
- Added `docs/io.md` — full inputs/outputs reference table

### 💡 Examples
- Added `_examples/basic/` — minimal usage example
- Added `_examples/terragrunt/` — Terragrunt example with DO Spaces remote state and OpenTofu support

### 👷 CI/CD & GitHub
- Added `.github/ISSUE_TEMPLATE/` — bug report, feature request, and config templates
- Added `SECURITY.md` — vulnerability reporting policy
- Standardized all workflow SHA pins and removed `workflows.old/`
- Updated `dependabot.yml` to track `_examples/basic/`
- Upgraded `.pre-commit-config.yaml` to gruntwork-io/pre-commit v0.1.23 and pre-commit-hooks v4.5.0

## [1.0.1] - 2026-02-06

### Changes
- 🐛 fix: update tf-checks workflow to match available examples
- ⬆️ upgrade: update examples to use provider >= 2.70.0
- ⬆️ Upgrade provider & standardize workflows
- 📝 Update CHANGELOG for v1.0.0
- chore: update Terraform version requirement to >= 1.5.4
- Merge pull request #20 from terraform-do-modules/fix/workflow
- fix: checkov.yml
- fix: tfcheck issue
- fix: updated workflow & .gitignore files
- chore: standardize GitHub Actions workflows and fix code issues

# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Emoji Legend
- 🎉 `:tada:` - Initial release
- ✨ `:sparkles:` - New features
- 🐛 `:bug:` - Bug fixes
- 🔧 `:wrench:` - Configuration changes
- 📝 `:memo:` - Documentation updates
- ⬆️ `:arrow_up:` - Dependencies upgrade
- 🚀 `:rocket:` - Performance improvements
- 🔒 `:lock:` - Security fixes

## [1.0.0] - 2026-02-06

### 🎉 Initial Release
- Terraform module for DigitalOcean SSH Key management
- Support for SSH key creation and management

### ⬆️ Dependencies
- Updated Terraform version requirement to >= 1.5.4
[v1.0.4]: https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/compare/v1.0.3...v1.0.4
[v1.0.6]: https://github.com/terraform-do-modules/terraform-digitalocean-ssh-key/compare/v1.0.5...v1.0.6
