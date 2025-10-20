{ config, pkgs, ... }:

{
    #Display manager
    services.displayManager.ly.enable = true;
    services.displayManager.defaultSession = "hyprland";

    #Pipewire
    services.pipewire.enable = true;
    services.pipewire.pulse.enable = true;

    #bluetooth
    services.blueman.enable = true;
    hardware.bluetooth.enable = true;

    #Docker
    virtualisation.docker.enable = true;

    #Flatpak
    services.flatpak.enable = true;

    #Appimage
    programs.appimage.enable = true;
}