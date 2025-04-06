# Ansible Role: Go

[![CI](https://github.com/afreisinger/ansible-role-go/actions/workflows/ci.yml/badge.svg)](https://github.com/afreisinger/ansible-role-go/actions/workflows/ci.yml)

This role installs a specified version of Go or, by default, the latest stable version of Go on Linux systems.

## Requirements

Ansible 2.9 or higher

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    - `go_version`: Version of Go to install (default: "latest")

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
