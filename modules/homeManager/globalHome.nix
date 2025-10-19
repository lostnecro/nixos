{ config, pkgs, inputs, ... }:

{imports = [
    ./firefox.nix
    ./hyprland.nix
    ./waybar.nix
    ./gtk.nix
];
}