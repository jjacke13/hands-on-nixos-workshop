# Nix & NixOS Workshop

This repository contains examples for learning Nix package manager and NixOS.

## Structure

- `01-ubuntu-examples/` - Examples for Nix on Ubuntu
- `02-flakes-examples/` - Modern Nix flakes examples

## Prerequisites

### Ubuntu VM
```bash
# Install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# Enable flakes (optional)
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

### NixOS VM
Flakes should be enabled in configuration.nix

## Workshop Flow

1. Nix Channels
2. nix-build (local packages)
3. nix-build (GitHub packages)
4. nix-shell
5. nix-env
6. Flakes introduction
7. NixOS configuration with flakes