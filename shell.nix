{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  inherit pkgs;
  buildInputs = [
    imgui
    libGL
    glfw
  ];

  shellHook = ''
    echo "lolcat"
  '';
}
