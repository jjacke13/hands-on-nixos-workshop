{
  description = "Multi-package flake with devshells";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages = {
          hello-cpp = pkgs.callPackage ./packages/hello-cpp.nix {};
          hello-python = pkgs.callPackage ./packages/hello-python.nix {};
          default = self.packages.${system}.hello-cpp;
        };

        devShells = {
          cpp = pkgs.mkShell {
            buildInputs = with pkgs; [ gcc cmake ];
            shellHook = ''
              echo "C++ development environment"
            '';
          };

          python = pkgs.mkShell {
            buildInputs = with pkgs; [ 
              python3
              python3Packages.requests
              python3Packages.rich
            ];
            shellHook = ''
              echo "Python development environment"
            '';
          };

          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              gcc
              cmake
              python3
              nodejs
              rustc
              cargo
            ];
            shellHook = ''
              echo "Multi-language development environment"
            '';
          };
        };

        apps = {
          hello-cpp = {
            type = "app";
            program = "${self.packages.${system}.hello-cpp}/bin/hello";
          };
          hello-python = {
            type = "app";
            program = "${self.packages.${system}.hello-python}/bin/hello-python";
          };
          default = self.apps.${system}.hello-cpp;
        };
      }
    );
}