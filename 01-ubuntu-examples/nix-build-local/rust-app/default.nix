#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a7fc11be66bdfb5cdde611ee5ce381c183da8386.tar.gz") {} }:
#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz") {} }:
{ pkgs ? import <nixpkgs> {} }:

  pkgs.rustPlatform.buildRustPackage {
    pname = "hello-rust";
    version = "1.0.0";
    
    src = ./.;
    
    cargoLock = {
      lockFile = ./Cargo.lock;
    };
    # Note: You need to run 'cargo generate-lockfile' first
    
    meta = {
      description = "Simple Rust hello world";
      platforms = pkgs.lib.platforms.unix;
    };
  }