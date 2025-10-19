{ config, pkgs, ...}:

{
    #Modulos
    imports = [
        ./hardware-configuration.nix
        ../../modules/nixOs/globalNix.nix
        ../../users/lost/user.nix
    ];

    #Experimental features
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    #Bootloader
    boot.loader.limine = {
        enable = true;
        efiSupport = true;
        maxGenerations = 20;
    };

    #Hostname
    networking.hostName = "nixos";

    #Wifi
    networking.networkmanager.enable = true;

    #Unfree software
    nixpkgs.config.allowUnfree = true;

    #System versioin DO NOT CHANGE
    system.stateVersion = "25.05";

}