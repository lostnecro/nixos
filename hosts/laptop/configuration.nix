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
    boot.loader.systemd-boot.enable = true;
    boot.loader.systemd-boot.configurationLimit = 10;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.supportedFilesystems = [ "ntfs" ];

    #Hostname
    networking.hostName = "nixos";

    #Wifi
    networking.networkmanager.enable = true;

    hardware.graphics = {
    enable = true;
    enable32Bit = true;
    };

    #Unfree software
    nixpkgs.config.allowUnfree = true;

    #System versioin DO NOT CHANGE
    system.stateVersion = "25.05";

}