{ config, lib, pkgs, ... }: {
  imports = [
    ./users/dortega.nix
  ];
  
  users = {
    defaultUserShell = pkgs.zsh;
  };
}
