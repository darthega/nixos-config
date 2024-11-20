{
  description = "Base NixOS flake configuration";

  inputs = {
    nixpkgs = {
      url = "nixpkgs/nixos-unstable";
    };
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      nixosSystem = nixpkgs.lib.nixosSystem;
    in {
    nixosConfigurations = {
      nixos = nixosSystem {
         inherit system;
         modules = [
           ./configuration.nix
         ];
      };
    };
  };
}
