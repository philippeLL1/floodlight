{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    dearImGUI.url = "github:ocornut/imgui";
    dearImGUI.flake = false;
  };

  outputs = inputs:
    inputs.flake-utils.lib.eachDefaultSystem (system:
      let pkgs = inputs.nixpkgs.legacyPackages.${system};
      in { devShell = pkgs.mkShell { buildInputs = [ inputs.dearImGUI ]; }; });
}
