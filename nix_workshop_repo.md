# Nix Workshop Repository Structure

This repository contains practical examples for learning Nix package manager and NixOS configuration management.

## Repository Structure

```
nix-workshop/
├── README.md                     # Main workshop overview and prerequisites
├── CLAUDE.md                     # Claude Code configuration and context
├── 01-ubuntu-examples/           # Traditional Nix examples for Ubuntu
│   ├── ubuntu_readme.md          # Ubuntu-specific commands and usage
│   ├── nix-build-local/          # Local package building examples
│   │   ├── cpp-app/              # C++ application with Nix
│   │   ├── py-app/               # Python application with dependencies
│   │   ├── npm-app/              # Node.js application
│   │   └── rust-app/             # Rust application
│   ├── nix-build-github/         # GitHub package building examples
│   │   ├── cln.nix              # Core Lightning build
│   │   └── holesail.nix         # Holesail package build
│   └── nix-shell-examples/       # Development environment examples
│       ├── shell.nix            # Multi-package development shell
│       ├── dice.py              # Python script for shell testing
│       └── single_package_shells.sh  # Shell commands reference
├── 02-flakes-examples/           # Modern Nix flakes examples
│   ├── flakes_readme.md          # Flakes commands and usage
│   ├── flake.nix                 # Basic flake example
│   ├── big flake/                # Multi-package flake with devshells
│   │   ├── flake.nix
│   │   └── packages/             # Individual package definitions
│   └── remote-flake/             # Remote flake usage examples
│       └── remote_flake_readme.md
└── nixos-files/                  # NixOS configuration examples
    ├── nixos_configuration.nix   # Basic NixOS configuration
    └── nixos_flake.nix          # Flake-based NixOS configuration
```

## Workshop Flow

1. **Nix Channels** - Traditional package management
2. **nix-build (local packages)** - Building custom packages
3. **nix-build (GitHub packages)** - Remote package building
4. **nix-shell** - Development environments
5. **nix-env** - Package installation and management
6. **Flakes introduction** - Modern Nix with flakes
7. **NixOS configuration** - System configuration with flakes

## Key Learning Examples

### Traditional Nix (01-ubuntu-examples/)
- **Local builds**: Working examples in C++, Python, Node.js, and Rust
- **GitHub builds**: Fetching and building packages from remote repositories
- **Development shells**: Creating reproducible development environments

### Modern Nix Flakes (02-flakes-examples/)
- **Basic flakes**: Simple package and devshell definitions
- **Multi-package flakes**: Complex projects with multiple outputs
- **Remote flakes**: Using packages from GitHub/GitLab directly

### NixOS Configuration (nixos-files/)
- **Traditional configuration**: Standard NixOS configuration files
- **Flake-based configuration**: Modern NixOS with flakes and modules

## Notes for Workshop Instructors

- All examples include working code and can be built/tested
- Start with traditional Nix to establish concepts, then progress to flakes
- Each directory contains README files with specific commands and explanations
- Examples use pinned Nixpkgs versions for reproducibility
- Real hashes are provided in source files (no placeholders)