{ python3, python3Packages }:

python3Packages.buildPythonApplication {
  pname = "hello-python-flake";
  version = "1.0.0";
  
  src = ./.;
  
  propagatedBuildInputs = with python3Packages; [
    requests
    rich
  ];
  
  format = "other";
  
  installPhase = ''
    mkdir -p $out/bin
    cp hello.py $out/bin/hello-python
    chmod +x $out/bin/hello-python
    sed -i "1i#!${python3}/bin/python3" $out/bin/hello-python
  '';
}