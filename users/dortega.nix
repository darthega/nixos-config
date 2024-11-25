{ config, pkgs, ... }: {
  config.users.users.dortega = {
    name = "dortega";
    isNormalUser = true;
    description = "Daniel Ortega";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      atomix
    ];
  };
}