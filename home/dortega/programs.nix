{ pkgs, ... }: {
  programs = {
    home-manager.enable = true;
    zsh = {
      # Install zsh.
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      
      zplug = {
        enable = true;
        plugins = [
          { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
          { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; } # Installations with additional options. For the list of options, please refer to Zplug README.
        ];
      };
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