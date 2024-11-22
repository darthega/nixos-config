{ config, lib, pkgs, ... }: {
  users = {
    defaultUserShell = pkgs.zsh;
    users = {
      dortega = import ./users/dortega.nix pkgs;
    };
  };
}
