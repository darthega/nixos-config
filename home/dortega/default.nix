{ pkgs, ... }: {
  imports = [
    ./programs.nix
  ];

  home = {
    stateVersion = "24.05";
    
    packages = with pkgs; [
      kdePackages.kate
      gitkraken
    ];
  };

  services = {
    kdeconnect.enable = true;
  };
}
