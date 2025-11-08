{ stdenv, gcc }:

stdenv.mkDerivation {
  pname = "hello-cpp-flake";
  version = "1.0.0";
  
  src = ./.;
  
  buildInputs = [ gcc ];
  
  buildPhase = ''
    g++ -o hello hello.cpp
  '';
  
  installPhase = ''
    mkdir -p $out/bin
    cp hello $out/bin/
  '';
}