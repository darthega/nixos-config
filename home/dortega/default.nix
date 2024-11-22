{ pkgs, ... }: {
  home = {
    stateVersion = "24.05";
    
    packages = with pkgs; [
      kdePackages.kate
      vscodium
      gitkraken
    ];
  };

  programs = import ./programs.nix {};
}
