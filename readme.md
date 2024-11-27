# Installation
This repo ignores the file `hardware-configuration.nix`, it should be generated on the destination machine, running `nixos-generate-config`, and placed besides the repo's `configuration.nix`, 

Either copied:
```sh
sudo cp /etc/nixos/hardware-configuration.nix <path-of-repo>/hardware-configuration.nix
```

Or linked:
```sh
sudo ln -s /etc/nixos/hardware-configuration.nix <path-of-repo>/hardware-configuration.nix
```
