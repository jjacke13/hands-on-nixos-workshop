{
  description = "workshop flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    holesail = {
    	url = "github:jjacke13/holesail-nix/main";
    	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, holesail, nixpkgs-unstable, ... }@inputs: 
 
  {
    
    nixosModules.state = { system.stateVersion = "25.05"; };
    
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        holesail.nixosModules.x86_64-linux.holesail
        self.nixosModules.state
        ./configuration.nix
      ];
    };
    

  };
}
