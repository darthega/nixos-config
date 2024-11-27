{ config, pkgs, ... }:
{
  home = {
    username = "darthega";
    homeDirectory = "/home/darthega";
    
    # PAckages to install for the user
    packages = with pkgs; [
      vscodium
      gitkraken
      kdePackages.kate
    ];

    # Home directory dotfiles
    file = {};
  
    # This value determines the home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update home Manager without changing this value. See
    # the home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.11";
  };

  programs = {
    # Let home Manager install and manage itself.
    home-manager.enable = true;

    git = {
      enable = true;
      userName = "darthega";
      userEmail = "darthega@gmail.com";
    };
  };
}