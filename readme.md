> [!WARNING]  
> This repo is for personaluse only, use under your own risk. There's no documentation related to perosnalization or user configuration.

# Installation
## Link files
### configuration.nix
Create a symlink from this repo's `configuration.nix` replacing the system's `/etc/nixos/configuration.nix` file:
```sh
sudo ln -s <path-of-repo>/configuration.nix /etc/nixos/configuration.nix
```

### home.nix
Create a symlink from this repo's `home.nix` replacing (or creating) the system's `/etc/nixos/home.nix` file:
```sh
sudo ln -s <path-of-repo>/home.nix /etc/nixos/home.nix
```

### hardware-configuration.nix
This repo ignores the file `hardware-configuration.nix`, it should be generated on the destination machine, running `nixos-generate-config`, and placed besides the repo's `configuration.nix`, 

By copying it:
```sh
sudo cp /etc/nixos/hardware-configuration.nix <path-of-repo>/hardware-configuration.nix
```

### flake.nix
Create a symlink from this repo's `flake.nix` replacing (or creating) the system's `/etc/nixos/flake.nix` file:
```sh
sudo ln -s <path-of-repo>/flake.nix /etc/nixos/flake.nix
```

## Enable configuration
To make sure that the flake configuration works, run: 
```sh
sudo nixos-rebuild test
```

This applies the configuration but doesn't add a registry for it in the boot menu.

If the process finishes correctly, you can run 
```sh
sudo nixos-rebuild switch
``` 
to persist the configuration so it applies after the next reboot.