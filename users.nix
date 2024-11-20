{ config, pkgs, ... }: {
  users = {
    defaultUserShell = pkgs.zsh;
    users = {
      dortega = {
        isNormalUser = true;
        description = "Daniel Ortega";
        extraGroups = [ "networkmanager" "wheel" ];
        shell = pkgs.zsh;
        packages = with pkgs; [
          kdePackages.kate
          vscodium
          gitkraken
        ];
      };
    };
  };
}
