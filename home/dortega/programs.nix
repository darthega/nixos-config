{ ... }: {
  home-manager.enable = true;
  zsh = {
    # Install zsh.
    enable = true;
    enableCompletion = true;
    # autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };
}