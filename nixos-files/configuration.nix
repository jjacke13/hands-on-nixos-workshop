{ config, pkgs, ... }:

{
  imports =
    [ 
    	./hardware-configuration.nix
    	./gnome.nix
    	./users.nix
    	./packages.nix
    	#./kde.nix
    ];

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  
  nix.settings = {
  	experimental-features = "nix-command flakes";
  };

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Athens";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "el_GR.UTF-8";
    LC_IDENTIFICATION = "el_GR.UTF-8";
    LC_MEASUREMENT = "el_GR.UTF-8";
    LC_MONETARY = "el_GR.UTF-8";
    LC_NAME = "el_GR.UTF-8";
    LC_NUMERIC = "el_GR.UTF-8";
    LC_PAPER = "el_GR.UTF-8";
    LC_TELEPHONE = "el_GR.UTF-8";
    LC_TIME = "el_GR.UTF-8";
  };

  

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "intl";
  };

  # Configure console keymap
  console.keyMap = "us-acentos";

  # Enable CUPS to print documents.
  services.printing.enable = false;
  
  documentation.enable = false;
  documentation.nixos.enable = false;

  # Enable automatic login for the user.
  #services.displayManager.autoLogin.enable = true;
  #services.displayManager.autoLogin.user = "ws";

  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  #systemd.services."getty@tty1".enable = false;
  #systemd.services."autovt@tty1".enable = false;

  # Install firefox.
  programs.firefox.enable = true;

  # List services that you want to enable:

  # services.openssh.enable = true;
  security.sudo.wheelNeedsPassword = false;

  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
 
  # networking.firewall.enable = false;
  
  /* services.tor = { 
    enable = true;
    client.enable = true;
    torsocks.enable = true;
    settings.ControlPort = 9051;
    settings.CookieAuthentication = true;
    settings.CookieAuthFile = "/var/lib/tor/control_auth_cookie";
    settings.CookieAuthFileGroupReadable = true;
    settings.DataDirectoryGroupReadable = true;
  }; */  

  system.stateVersion = "25.05";

}
