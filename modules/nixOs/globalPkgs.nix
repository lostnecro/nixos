{ config, pkgs, ... }:


    #System wide packages
{
    environment.systemPackages = with pkgs; [
    wget
    git
    neovim
    kitty
    vscode
    rofi
    zed
    pavucontrol
    nwg-look
    brightnessctl
    nautilus
    distrobox
    distroshelf
    e2fsprogs
    nerd-fonts.ubuntu
    hachimarupop
    whitesur-gtk-theme
    whitesur-icon-theme
    whitesur-cursors
    whitesur-kde
    killall
    pyprland
    ];

    fonts.packages = with pkgs; [
    # Font packages go here
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    noto-fonts
    hachimarupop
    ];
    # Older versions might use `fonts.enableDefaultFonts = true;` but this has been renamed [13]
    fonts.enableDefaultPackages = true;

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };

    programs.waybar.enable = true;
}   
