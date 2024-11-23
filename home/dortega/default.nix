{ pkgs, ... }: {
  home = {
    stateVersion = "24.05";
    
    packages = with pkgs; [
      kdePackages.kate
      gitkraken
    ];
  };

  programs = import ./programs.nix pkgs;

  services = {
    kdeconnect.enable = true;
  };
}
