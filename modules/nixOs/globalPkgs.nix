{ config, pkgs, ... }:


    #System wide packages
{
    environment.systemPackages = with pkgs; [
    
    #Utilities
    wget
    curl
    bat
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
    killall
    pyprland
    btop
    docker-compose
    lazydocker
    ghostty
    remmina

    #Rice
    nerd-fonts.ubuntu
    hachimarupop
    whitesur-gtk-theme
    whitesur-icon-theme
    whitesur-cursors
    whitesur-kde
    
    #Privacy/Security
    protonvpn-gui
    keepassxc
    
    #Games
    lutris
    hydralauncher
    protonup-ng
    protonup-qt
    wineWowPackages.waylandFull
    winetricks
    heroic
    vesktop
    gamemode
    overlayed

    #Entertainment
    mpv
    ani-cli
    dunst
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

    programs.steam.protontricks.enable = true;
    programs.steam.enable = true;
}   
