{ config, pkgs, ... }:
{
  imports = [
    ./browsers.nix
  ];

  programs = {
    # Let home Manager install and manage itself.
    home-manager.enable = true;

    git = {
      enable = true;
      userName = "darthega";
      userEmail = "darthega@gmail.com";
    };

    vscode = {
      enable = true;
      package = pkgs.vscodium;
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];
      userSettings = {
        "editor.tabSize" = 2;
        "editor.renderWhitespace" = "boundary";
        "editor.formatOnSave" = false;
      };
    };    
  };
}