{ config, pkgs, ... }:

{
    #Display manager
    services.xserver.enable = true;
    services.libinput.enable = true;
    #services.displayManager.sddm.enable = true;
    #services.displayManager.sddm.wayland.enable = true;
    services.displayManager.gdm.enable = true;

    #Desktop managers
    #Gnome
    services.desktopManager.gnome.enable = true;
    services.gnome.games.enable = false;
    services.gnome.core-apps.enable = false;
    services.gnome.core-developer-tools.enable = false;
    services.orca.enable = false;


    #Niri
    programs.niri.enable = true;
    programs.niri.package = pkgs.niri_git;

    #Plasma 6
    #services.desktopManager.plasma6.enable = true;

    #Hyprland
    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };


    #Pipewire
    services.pipewire.enable = true;
    services.pipewire.pulse.enable = true;
    services.pipewire.alsa.enable = true;
    services.pipewire.jack.enable = true;

    #bluetooth
    hardware.bluetooth.enable = true;
    

    #Docker
    virtualisation.docker = {
        enable = true;
        daemon.settings = {
            "data-root" = "/home/lost/Projects/DockerRoot";
        };
    };

    virtualisation.waydroid.enable = true;
    

    #Flatpak
    services.flatpak.enable = true;

    #Appimage
    programs.appimage.enable = true;

    #Manager external devices
    services.udisks2.enable = true;
    services.gvfs.enable = true;

    services.gnome.gnome-keyring.enable = true;
    security.pam.services.hyprland.enableGnomeKeyring = true;

    hardware.xpadneo.enable = true;

    #Nix garbage collector
    nix.gc = {
        automatic = true;
        dates = [ "10:00" ];
        options = "--delete-older-than 3d";
    };
    nix.autoOptimiseStore = true;
}