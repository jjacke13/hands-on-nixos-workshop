# Nix Flakes Examples

## Enable Flakes

Add to `~/.config/nix/nix.conf` or `/etc/nix/nix.conf`:
```
experimental-features = nix-command flakes
```

## Commands

```bash
# Build local flake
nix build .#package-name

# Build remote flake
nix build github:user/repo#package-name

# Enter dev shell
nix develop

# Run package
nix run .#package-name

# NixOS rebuild
sudo nixos-rebuild switch --flake .#hostname
```