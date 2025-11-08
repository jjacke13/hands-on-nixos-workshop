# Remote Flake Examples

## Build from GitHub

```bash
# Build a package from a GitHub flake
nix build github:NixOS/nixpkgs/nixos-25.05#hello

# Run without installing
nix run github:NixOS/nixpkgs/nixos-25.05#speedtest-cli

# Enter a devshell from GitHub
nix develop github:user/repo
```

## Build from GitLab

```bash
nix build gitlab:user/repo#package
```

## Build from a Git URL

```bash
nix build git+https://github.com/user/repo#package
```

## Build with specific revision

```bash
nix build github:user/repo/commit-hash#package
```
```bash
nix run github:NixOS/nixpkgs/nixos-20.09#speedtest-cli
```