{ config, pkgs, inputs, ... }:

{imports = [
    ./firefox.nix
    ./hyprland.nix
    ./waybar.nix
    ./scripts.nix
    ./shell.nix
    ./winapps.nix
    ./qute.nix
    ./fastfetch.nix
    ./swww.nix
    ./flameshot.nix
    ./niri.nix
    #./flatpak.nix
    #./gtk.nix
];
}