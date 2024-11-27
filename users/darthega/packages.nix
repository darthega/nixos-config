{ config, pkgs, ... }:
{
  # Packages to install for the user
  home.packages = with pkgs; [
    vscodium
    gitkraken
    kdePackages.kate
  ];
}