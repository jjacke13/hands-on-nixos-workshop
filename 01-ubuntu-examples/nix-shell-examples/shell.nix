{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    pkgs.python3
    pkgs.python3Packages.numpy
    pkgs.nodejs_22
  ];

  shellHook = ''
    echo "Welcome! This shell provides nodejs-22, Python 3 and NumPy."
    echo "You can run the dice roller with: python dice.py"
  '';
}
