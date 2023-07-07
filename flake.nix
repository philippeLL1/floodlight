{
  description = "cross-platform dmenu clone";

  inputs = { 
    flake-utils.url = "github:numtide/flake-utils"; 
    nixGL.url = "github:guibou/nixGL"; 
  };

  outputs = { self, nixpkgs, flake-utils, nixGL }:
    flake-utils.lib.eachDefaultSystem
      (system:
      let pkgs = import nixpkgs { 
        system = "${system}";
        overlays = [ nixGL.overlay]; 
      }; in
        {
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
      );
}

