#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a7fc11be66bdfb5cdde611ee5ce381c183da8386.tar.gz") {} }:
#{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz") {} }:
{ pkgs ? import <nixpkgs> {} }:
 
  pkgs.stdenv.mkDerivation {
  pname = "hello-cpp";
  version = "1.0.0";
  
  src = ./.;
  
  nativeBuildInputs = [ pkgs.gcc pkgs.makeWrapper ];
  buildInputs = [ pkgs.cowsay ];
  
  buildPhase = ''
    g++ -o hello hello.cpp
  '';
  
  installPhase = ''
    mkdir -p $out/bin
    cp hello $out/bin/
    
    # Wrap the binary to ensure cowsay is in PATH
    wrapProgram $out/bin/hello \
      --prefix PATH : ${pkgs.cowsay}/bin
  '';
  
  meta = {
    description = "C++ hello world with cowsay dependency";
    platforms = pkgs.lib.platforms.unix;
  };
}