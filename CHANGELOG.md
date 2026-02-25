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
