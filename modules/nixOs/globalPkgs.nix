{ config, pkgs, ... }:


    
{   #System wide packages

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
    satty
    grim
    slurp
    wl-clipboard
    wev
    brave
    waybar
    catppuccin-kvantum
    kdePackages.qtstyleplugin-kvantum
    onlyoffice-desktopeditors
    libreoffice-qt6-fresh
    thunderbird
    nautilus
    android-studio
    android-studio-tools
    xwayland-satellite
    gnome-keyring
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.polkit-kde-agent-1

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

    #Fonts
    fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    noto-fonts
    fira-code-symbols
    ipafont
    ];
    fonts.enableDefaultPackages = true;

    services.desktopManager.plasma6.enable = true;

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };


    programs.hyprlock.enable = true;

    #programs.waybar.enable = true;

    programs.steam.protontricks.enable = true;
    programs.steam.enable = true;

    programs.obs-studio.enable = true;

    programs.kdeconnect.enable = true;

    programs.labwc.enable = true;
    programs.xwayland.enable = true;

    programs.niri.enable = true;
    programs.niri.package = pkgs.niri_git;

}   
