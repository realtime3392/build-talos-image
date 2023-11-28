#!/bin/bash

TALOSRELEASE_BRANCH='release-1.5'
TALOSPKGS_BRANCH="${TALOSRELEASE_BRANCH}"

TALOSRELEASE_TAG='v1.5.5'
TALOSPKGS_TAG='v1.5.0'

# Use latest tag from the v1.5 Talos release branch:
TALOSRELEASE="${TALOSRELEASE_BRANCH}"

TALOS_GITHUB="siderolabs/talos"
# TALOS_GITHUB="pl4nty/talos"

# Use latest tag from the v1.5 Talos pkgs branch:
TALOSPKGS="${TALOSPKGS_TAG}"

TALOS_PKGS_GITHUB="siderolabs/pkgs"
# TALOS_PKGS_GITHUB="pl4nty/talos-pkgs"

TALOS_GIT_FLAGS='--depth 1 --shallow-submodules'

REGISTRY_HOST='127.0.0.1'
REGISTRY_PORT='5000'
REGISTRY="${REGISTRY_HOST}:${REGISTRY_PORT}"

USERNAME="${USER}"
