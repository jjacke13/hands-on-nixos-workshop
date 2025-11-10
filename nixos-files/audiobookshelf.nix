{ config, lib, pkgs, ... }:

{ 
  services.audiobookshelf.enable = true;
  services.audiobookshelf.host = "127.0.0.1";
  services.audiobookshelf.port = 8000;
  services.audiobookshelf.openFirewall = true;

}