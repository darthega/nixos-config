{ config, pkgs, ... }: {
  name = "dortega";
  isNormalUser = true;
  description = "Daniel Ortega";
  extraGroups = [ "networkmanager" "wheel" ];
  shell = pkgs.zsh;
}