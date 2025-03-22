{
  description = "Flake templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }: {
    devShells = let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSupportedSystem = f: nixpkgs.lib.genAttrs supportedSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in forEachSupportedSystem ({ pkgs }: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          nil
          nixfmt-classic
        ];
      };
    });

    templates = {

      rust = {
        path = ./rust;
        description = "Rust dev template";
      };

      scala = {
        path = ./scala;
        description = "Scala dev template";
      };

      typescript = {
        path = ./typescript;
        description = "Typescript dev template";
      };

    };
  };
}
