{ config, pkgs, ... }:

{
  
  # Define a user account. Don't forget to set a password with ‘passwd’.  
  users.users.ws = {
    isNormalUser = true;
    description = "workshop-user";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    
    ];
  };


}
