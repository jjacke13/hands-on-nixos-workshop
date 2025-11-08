{
  description = "Basic Nix flake example";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      packages."x86_64-linux" = {
        default = pkgs.hello;
        cowsay = pkgs.cowsay;
      };

      packages."aarch64-linux" = {
        default = nixpkgs.legacyPackages."aarch64-linux".smartmontools;
      };

      packages."x86_64-darwin" = {
        default = nixpkgs.legacyPackages."x86_64-darwin".smartmontools;
      };

      devShells."x86_64-linux" = {
        default = pkgs.mkShell {
          buildInputs = with pkgs; [
            cowsay
            lolcat
          ];
          
          shellHook = ''
            echo "Welcome to the dev shell!" | cowsay
          '';
        };
      };
    };
}