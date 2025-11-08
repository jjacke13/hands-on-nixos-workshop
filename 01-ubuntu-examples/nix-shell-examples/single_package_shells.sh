#!/usr/bin/env bash

# Single package shell example
nix-shell -p cowsay -- -run "cowsay 'Hello from Nix!'"

nix-shell -p python3

nix-shell -p stirling-pdf