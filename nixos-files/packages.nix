{ config, pkgs, ... }:

{

   # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
	pkgs.tree
	pkgs.curl
	pkgs.wget
	pkgs.git
  ];
 
}
