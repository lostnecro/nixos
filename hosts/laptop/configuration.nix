{ config, pkgs, ...}:

{
    #Modulos
    imports = [
        ./hardware-configuration.nix
        ../../modules/nixOs/globalNix.nix
        ../../users/lost.nix
    ];

    #Experimental features
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    #Bootloader
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    #Hostname
    networking.hostName = "nixos";

    #Wifi
    networking.networkmanager.enable = true;

    #Unfree software
    nixpkgs.config.allowUnfree = true;

    #System versioin DO NOT CHANGE
    system.stateVersion = "25.05";

}