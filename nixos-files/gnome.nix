{ config, pkgs, ... }:

{
# Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };
  
  environment.systemPackages = [  #these packages are desktop-related
	pkgs.gnomeExtensions.dash-to-dock
    	pkgs.gnomeExtensions.gtk4-desktop-icons-ng-ding
    	pkgs.gnomeExtensions.user-themes
  ];
  
  environment.gnome.excludePackages = with pkgs; [
    epiphany    # web browser
    simple-scan
    totem       # video player
    yelp        # help viewer
    evince      # document viewer
    geary       # email client
    seahorse    # password manager
    gnome-maps 
    gnome-music 
    gnome-weather
    gnome-contacts
    gnome-tour
    gnome-font-viewer
    gnome-characters
    parlatype
    decibels
  ];
  
  
 
  
}
