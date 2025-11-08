{ config, pkgs, ... }:

{ 
 # Enable the X11 windowing system
  services.xserver.enable = true;
  
  # Enable KDE Plasma
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  
  # Enable sound with pipewire (recommended for KDE)
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Essential KDE packages
  environment.systemPackages = with pkgs; [
    kdePackages.kate
    kdePackages.konsole
    kdePackages.dolphin
    kdePackages.spectacle
    kdePackages.okular
    kdePackages.gwenview
    kdePackages.ark
  ];

  # Enable touchpad support
  services.libinput.enable = true;
  
}  
