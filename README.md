# Ansible Role: Go

[![CI](https://github.com/afreisinger/ansible-role-go/actions/workflows/ci.yml/badge.svg)](https://github.com/afreisinger/ansible-role-go/actions/workflows/ci.yml)

This role installs a specified version of Go or, by default, the latest stable version of Go on Linux systems.

## Requirements

Ansible 2.9 or higher

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    - `go_version`: Version of Go to install. Default: `"latest"`.
    - `go_checksum`: (Required if `go_version` is not `"latest"`.) SHA256 checksum of the Go tarball. You can find it at [https://go.dev/dl/](https://go.dev/dl/).

> ⚠️ **Note:** If you specify a version other than `"latest"`, you **must also provide** the corresponding `go_checksum`.  
> This is required to verify the integrity of the downloaded file. When using `"latest"`, the checksum will be automatically skipped.

    

## Dependencies

None

## Example Playbook

    - hosts: localhost
      roles:
        - { role: afreisinger.go }

## License

MIT / BSD

## Author Information

Created in 2025 by [Adrian Freisinger](https://afreisinger.gitlab.io/)
