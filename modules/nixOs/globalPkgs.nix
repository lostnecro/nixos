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
    alsa-tools
    alsa-firmware
    prismlauncher
    ntfs3g
    kdePackages.dolphin
    kdePackages.kdeconnect-kde
    scrcpy
    android-tools
    qtscrcpy

    #Rice
    nerd-fonts.ubuntu
    hachimarupop
    whitesur-gtk-theme
    whitesur-icon-theme
    whitesur-cursors
    whitesur-kde
    waypaper
    afterglow-cursors-recolored
    mint-cursor-themes
    
    #Privacy/Security
    protonvpn-gui
    keepassxc
    hyprpolkitagent
    
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

    #Creation
    kdePackages.kdenlive
    gimp
    inkscape
    blender
    audacity
    ffmpeg
    imagemagick
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

    programs.hyprlock.enable = true;

    programs.waybar.enable = true;

    programs.steam.protontricks.enable = true;
    programs.steam.enable = true;

    programs.obs-studio.enable = true;

    programs.kdeconnect.enable = true;
}   
