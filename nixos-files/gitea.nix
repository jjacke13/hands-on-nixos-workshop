{ config, lib, pkgs, ... }:

{ 
    services.gitea.enable = true;
    services.gitea.dump.enable = false;
    services.gitea.settings.log.LEVEL = "Critical";
    services.gitea.settings.server.HTTP_ADDR = "127.0.0.1";
    services.gitea.settings.server.ROOT_URL = "%(PROTOCOL)s://%(DOMAIN)s:%(HTTP_PORT)s";
    services.gitea.settings.server.HTTP_PORT = 3000;

}