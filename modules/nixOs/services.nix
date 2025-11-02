{ config, pkgs, ... }:

{
    #Display manager
    services.xserver.enable = true;
    services.displayManager.sddm.enable = true;
    services.displayManager.sddm.wayland.enable = true;


    #Pipewire
    services.pipewire.enable = true;
    services.pipewire.pulse.enable = true;
    services.pipewire.alsa.enable = true;
    services.pipewire.jack.enable = true;

    #bluetooth
    services.blueman.enable = true;
    hardware.bluetooth.enable = true;

    #Docker
    virtualisation.docker = {
        enable = true;
        daemon.settings = {
            "data-root" = "/home/lost/Projects/DockerRoot";
        };
    };

    #Flatpak
    services.flatpak.enable = true;

    #Appimage
    programs.appimage.enable = true;

    #Manager external devices
    services.udisks2.enable = true;
    services.gvfs.enable = true;
}