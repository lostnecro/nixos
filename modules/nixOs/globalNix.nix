{ config, pkgs, ...}:

{   imports = [
    ./locale.nix
    ./globalPkgs.nix
    ./services.nix
    ];
}
