{ config, pkgs, ... }:


    
{   #System wide packages

    environment.systemPackages = with pkgs; [
    
    #Utilities
    wget
    curl
    rofi
    pavucontrol
    nwg-look
    brightnessctl
    distrobox
    distroshelf
    e2fsprogs
    killall
    pyprland
    btop
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
    xwayland-satellite
    gnome-keyring
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.polkit-kde-agent-1
    nyxt
    bluez
    geary
    refine
    
    #Code
    bat
    python314
    pipx
    playwright
    git
    neovim
    kitty
    vscode
    zed
    docker-compose
    lazydocker
    ghostty
    android-studio
    android-studio-tools
    gearlever
    loupe
    lutris
    ocs-url

    #Emulators
    pcsx2
    rpcs3
    snes9x
    retroarch-full
    ppsspp-qt
    duckstation

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
    graphite-cursors
    posy-cursors
    hackneyed
    bibata-cursors-translucent
    pokemon-cursor
    marwaita-icons
    gruvbox-plus-icons
    
    #Privacy/Security
    protonvpn-gui
    keepassxc
    hyprpolkitagent
    
    #Games
    hydralauncher
    protonup-ng
    protonup-qt
    wineWowPackages.waylandFull
    winetricks
    heroic
    vesktop
    gamemode
    overlayed
    kdePackages.bluedevil
    bluetui
    mpvpaper
    nettools

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


    programs.hyprlock.enable = true;

    #programs.waybar.enable = true;

    programs.steam.protontricks.enable = true;
    programs.steam.enable = true;

    programs.obs-studio.enable = true;

    programs.kdeconnect.enable = true;

    programs.labwc.enable = true;
    programs.xwayland.enable = true;

    

    programs.cdemu.enable = true;
    #programs.seahorse.enable = false;

    nixpkgs.overlays = [
    (final: prev: {
      pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
        (python-final: python-prev: {
          pyrate-limiter = python-prev.pyrate-limiter.overridePythonAttrs (oldAttrs: {
            doCheck = false;
          });
        })
      ];
    })
  ];

}   
