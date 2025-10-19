{ config, pkgs, ... }:


    #System wide packages
{
    environment.systemPackages = with pkgs; [
    wget
    git
    neovim
    kitty
    vscode
    wofi
    zed
    pavucontrol
    nwg-look
    brightnessctl
    nautilus
    distrobox
    distroshelf
    e2fsprogs

    ];

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };
}   
