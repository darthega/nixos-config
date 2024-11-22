{ pkgs, ... }: {
  home-manager = {
    users = {
      dortega = import ./home/dortega.nix pkgs;
    };
  };
}
