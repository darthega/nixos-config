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

    zsh = {
      # Install zsh.
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;

      history.ignoreAllDups = true;

      plugins = [
        {
          name = "zsh-autocomplete";
          src = pkgs.fetchFromGitHub {
            owner = "marlonrichert";
            repo = "zsh-autocomplete";
            rev = "23.07.13";
            sha256 = "sha256-/6V6IHwB5p0GT1u5SAiUa20LjFDSrMo731jFBq/bnpw=";
          };
        }
        {
          name = "powerlevel10k";
          src = pkgs.zsh-powerlevel10k;
          file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
        }
      ];
    };   
  };
}