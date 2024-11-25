{ pkgs, ... }: {
  programs = {
    home-manager.enable = true;
    zsh = {
      # Install zsh.
      enable = true;
      enableCompletion = true;
      # autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
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