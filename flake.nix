{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    systems.url = "github:nix-systems/default";
    devenv.url = "github:cachix/devenv";
    nixgl.url = "github:guibou/nixGL";
  };

  outputs = { self, nixgl, nixpkgs, devenv, systems, ... } @ inputs:
    let
      forEachSystem = nixpkgs.lib.genAttrs (import systems);
    in
    {
      devShells = forEachSystem
        (system:
          let
            pkgs = import nixpkgs { 
              system = "${system}";
              overlays = [ nixgl.overlay ];
            };
          in
          {
            default = devenv.lib.mkShell {
              inherit inputs pkgs;
              modules = [
                {
                  env.CPLUS_INCLUDE_PATH = builtins.getEnv "C_INCLUDE_PATH";
                  languages.cplusplus.enable = true;

                  packages = [ 
                    pkgs.imgui 
                    pkgs.glfw 
                    pkgs.libGL
                  ];

                  enterShell = ''
                    export PATH=$PATH:$HOME/code/examples/dmenu
                  '';

                  env.compile_flags = builtins.concatStringsSep (" ") [
                    "-std=c++11"
                    "-lGl"
                    "-lglfw"
                    "-I$DEVENV_PROFILE/include/imgui"
                    "-Isrc/floodlight/include"
                    "-o build/floodlight"
                    "src/floodlight/main.cpp" 
                    "src/floodlight/components.cpp" 
                    "src/floodlight/distance.cpp" 
                    "$DEVENV_PROFILE/include/imgui/*.cpp" 
                    "src/imgui_impl/imgui_impl_glfw.cpp" 
                    "src/imgui_impl/imgui_impl_opengl3.cpp"
                    "-Wdeprecated-declarations"
                  ];

                  # TODO: Change to cmake
                  scripts.build.exec = "g++ " + (builtins.getEnv "compile_flags");
                  scripts.floodpath.exec = "echo $PATH | sed -e 's/\:/\ /g' | xargs ./build/src/Flood/Flood ";
                  scripts.floodlight.exec = "run $(dmenu_path) $@";
                }
              ];
            };
          });
    };
}
