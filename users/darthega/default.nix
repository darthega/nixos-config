{ config, pkgs, ... }:
{
  imports = [
    ./programs.nix
    ./packages.nix
  ];

  home = {
    username = "darthega";
    homeDirectory = "/home/darthega";
    

    # Home directory dotfiles
    file = {
      # Have to read file contents otherwise nix will try to execute it
      ".p10k.zsh".text = builtins.readFile ./dotfiles/p10k.zsh;
    };
  
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
}