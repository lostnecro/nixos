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
    ];

    programs.hyprland.enable = true;
}
