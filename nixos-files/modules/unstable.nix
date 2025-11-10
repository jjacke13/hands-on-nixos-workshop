{ config, lib, inputs, ... }:
let
  pkgs = inputs.nixpkgs-unstable.legacyPackages."x86_64-linux";
in
{
    environment.systemPackages = with pkgs; [
        vlc        
        tor
        tor-browser
        tmux
        #ettercap
        #wireshark
        #tcpdump
    ];
}
