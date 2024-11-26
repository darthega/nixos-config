{ pkgs, ... }: {
  imports = [
    ./programs.nix
  ];

  home = {
    stateVersion = "24.05";
    
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "Meslo" ]; })
      kdePackages.kate
      gitkraken
      brave
    ];

    file = {
      ".p10k.zsh".text = builtins.readFile ./dotfiles/p10k.zsh;
    };
  };

  fonts.fontconfig.enable = true;

  services = {
    kdeconnect.enable = true;
  };
}
