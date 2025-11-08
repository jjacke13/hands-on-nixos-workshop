#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a7fc11be66bdfb5cdde611ee5ce381c183da8386.tar.gz") {} }:
#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz") {} }:
{ pkgs ? import <nixpkgs> {} }:

  pkgs.buildNpmPackage {
    pname = "hello-npm";
    version = "1.0.0";
    
    src = ./.;
    
    npmDepsHash = "sha256-i6Jw5e2ZMqvSfUv95m937QylhSdExwKh3P4uH1vCZsY=";
    
    buildPhase = "echo 'No build phase required'";

    /*installPhase = ''
      mkdir -p $out/bin
      #cp -r node_modules $out/
      #cp index.js package.json $out/
      
      cat > $out/bin/hello-npm <<EOF
      #!${pkgs.bash}/bin/bash
      cd $out
      ${pkgs.nodejs}/bin/node index.js
      EOF
      
      chmod +x $out/bin/hello-npm
    ''; */
  }