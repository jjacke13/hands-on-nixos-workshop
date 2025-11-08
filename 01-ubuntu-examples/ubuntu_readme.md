# Ubuntu Nix Examples

## 1. Nix Channels

```bash
# List channels
nix-channel --list

# Update channels
nix-channel --update

# Add a specific channel
nix-channel --add https://nixos.org/channels/nixos-25.05 nixpkgs
```

## 2. Building Local Packages

Navigate to each subdirectory and run:
```bash
nix-build
```

## 3. Building GitHub Packages

```bash
cd nix-build-github
nix-build example.nix
```

## 4. Nix Shell Examples

```bash
# Single package
nix-shell -p cowsay
cowsay "Hello Nix!"

# Multiple packages
nix-shell -p python3 nodejs cowsay
```

## 5. Nix Env

```bash
# Install package
nix-env -iA nixpkgs.hello

# List installed
nix-env -q

# Uninstall
nix-env -e hello

# Upgrade all
nix-env -u

# Rollback
nix-env --rollback
```