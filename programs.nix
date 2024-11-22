{ config, pkgs, ... }: {
  programs = {
    firefox = {
      # Install firefox.
      enable = true;
    };
    zsh = {
      # Install zsh.
      enable = true;
    };
  }; 
}