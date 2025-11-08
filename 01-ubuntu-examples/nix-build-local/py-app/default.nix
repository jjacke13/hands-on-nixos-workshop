#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a7fc11be66bdfb5cdde611ee5ce381c183da8386.tar.gz") {} }:
#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz") {} }:
{ pkgs ? import <nixpkgs> {} }:

  pkgs.python3Packages.buildPythonApplication {
    pname = "hello-python";
    version = "1.0.0";
    format = "other";
    
    src = ./.;
    
    propagatedBuildInputs = [ 
      pkgs.python3Packages.requests
      pkgs.python3Packages.rich
      ];
    
    dontBuild = true;

    installPhase = ''
      mkdir -p $out/bin
      cp app.py $out/bin/hello-python
      chmod +x $out/bin/hello-python
      
      # Add shebang
      sed -i "1i#!${pkgs.python3}/bin/python3" $out/bin/hello-python
    '';
  }