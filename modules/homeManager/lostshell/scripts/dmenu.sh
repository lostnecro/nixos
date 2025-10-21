#!/bin/bash

###########################
##Launches places submenu##
###########################
show_placesMenu() {
    placesMenu="󰌑 Go Back\n󱂵 Home\n󰉍 Downloads\n󰮃 Games\n Documents\n TLP\n󱁿 Config\n󱁿 Local\n󱘎 Root"
    navigationPlaces=$(echo -e "$placesMenu" | rofi -dmenu -p "Places")

    case "$navigationPlaces" in
        "󰌑 Go Back")
            show_mainMenu;;
        *Home)
            xdg-open "$HOME";;
        *Downloads)
            xdg-open "$HOME/Downloads";;
        *Games)
            xdg-open "$HOME/Games";;
        *Documents)
            xdg-open "$HOME/Documents";;
        *TLP)
            xdg-open "$HOME/Documents/TLP";;
        *Config)
            xdg-open "$HOME/.config";;
        *Local)
            xdg-open "$HOME/.local";;
        *Root)
            xdg-open "/";;
        esac
}

##########################
##Launches tools submenu##
##########################

show_toolsMenu() {
    toolsMenu="󰌑 Go Back\n Adb Connect\n Mirror Android\n Stream Android Audio\n Kill a Window"
    navigationTools=$(echo -e "$toolsMenu" | rofi -dmenu -p "Tools")

    case "$navigationTools" in
        "󰌑 Go Back")
            show_mainMenu;;
        " Adb Connect")
            bash $HOME/.config/lostshell/scripts/connectAdb.sh;;
        " Mirror Android")
            bash $HOME/.local/share/sndcpy/sndcpy & scrcpy;;
        " Stream Android Audio")
            bash $HOME/.local/share/sndcpy/sndcpy;;
        " Kill a Window")
            hyprctl kill;;
    esac
}

##################################
##Launches documentation submenu##
##################################
show_docsMenu() {
    docsMenu="󰌑 Go Back\n󰣇 ArchWiki\n󱄅 NixOS Packages\n󱄅 NixOS Options\n󱄅 HomeManager Options\n Hyprland\n Waybar\n ProtonDB"
    navigationDocs=$(echo -e "$docsMenu" | rofi -dmenu -p "Documantation")

    case "$navigationDocs" in
        "󰌑 Go Back")
            show_mainMenu;;
        *ArchWiki)
            xdg-open "https://wiki.archlinux.org/title/Main_page" && notify-send -t 1300 "󰣇 ArchWiki was open";;
        "󱄅 NixOS Packages")
            xdg-open "https://search.nixos.org/packages" && notify-send -t 1300 "󱄅 NixOS Packages was open";;
        "󱄅 NixOS Options")
            xdg-open "https://search.nixos.org/options" && notify-send -t 1300 "󱄅 NixOS Options was open";;
        "󱄅 HomeManager Options")
            xdg-open "https://home-manager-options.extranix.com/?query=&release=master" && notify-send -t 1300 "󱄅 HomeManager Options was open";;
        *Hyprland)
            xdg-open "https://wiki.hypr.land/" && notify-send -t 1300 " Hyprland Wiki was open";;
        *Waybar)
            xdg-open "https://github.com/Alexays/Waybar/wiki" && notify-send -t 1300 " Waybar Wiki was open";;
        *ProtonDB)
            xdg-open "https://www.protondb.com/" && notify-send -t 1300 " ProtonDB was open";;
        esac
}

#############################
##Launches settings submenu##
#############################
show_settingsMenu() {
    settingsMenu="󰌑 Go Back\n Wi-Fi\n What is my local IP?\n Open .config in Zed\n󱄅 HomeManager\n󱄅 Rebuild NixOS\n󰘳 Binds\n󰍹 Display\n Startup\n󰒓 Edit Waybar\n Restart Waybar\n󰒓 Edit Pyprland\n Refresh Pyprland"
    navigationSettings=$(echo -e "$settingsMenu" | rofi -dmenu -p "Settings")

    case "$navigationSettings" in
        "󰌑 Go Back")
            show_mainMenu;;
        " Open .config in Zed")
            zeditor "$HOME/.config";;
        *Wi-Fi)
            pypr toggle wifi;;
        " What is my local IP?")
            notify-send "Your Local IP is:" "$(ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1)";;
        *HomeManager)
            code /etc/nixos/homeManager/;;
        "󱄅 Rebuild NixOS")
            ghostty -e sh -c "sudo nixos-rebuild switch --flake /etc/nixos#laptop; echo 'Pressione ENTER para fechar...' && read";;
        *Binds)
            zeditor $HOME/.config/hypr/binds.conf;;
        *Display)
            zeditor $HOME/.config/hypr/displays.conf;;
        *Startup)
            zeditor $HOME/.config/hypr/boot.conf;;
        "󰒓 Edit Waybar")
            zeditor $HOME/.config/waybar/;;
        " Restart Waybar")
            killall waybar && waybar;;
        "󰒓 Edit Pyprland")
            zeditor $HOME/.config/hypr/pyprland.toml;;
        " Refresh Pyprland")
            pypr reload;;
    esac
}

##########################
##Launches power submenu##
##########################

show_powerMenu() {
    powerMenu="󰌑 Go Back\n Lockscreen\n Restart\n⏻ Shutdown"
    navigationPowerMenu=$(echo -e "$powerMenu" | rofi -dmenu -p "Power Menu")

    case "$navigationPowerMenu" in
        "󰌑 Go Back")
            show_mainMenu;;
        *Lockscreen) swaylock;;
        *Restart) reboot;;
        *Shutdown) shutdown now;;
    esac
}


###############
## Main menu ##
###############
show_mainMenu() {
mainMenu="󰀻 Apps\n Places\n Clipboard\n󰒚 Package Manager\n󰦭 Tools\n󰧮 Documentation\n󰌁 Color Picker\n󰞅 Emoji\n󰘳 Keybinds\n Settings\n⏻ Power Menu"
## Selection
    navigation=$(echo -e "$mainMenu" | rofi -dmenu -p "Main Menu")
    case "$navigation" in
        *Apps) rofi -show-icons -show drun;;
        *Places) show_placesMenu ;;
        *Clipboard) clipcat-menu;;
        "󰒚 Package Manager") hyprctl dispatch exec [float]kitty pacseek;;
        *Tools) show_toolsMenu;;
        *Documentation) show_docsMenu;;
        "󰌁 Color Picker") sleep 0.3 && hyprpicker -a;;
        *Emoji) hypremoji;;
        *Keybinds) hyprctl dispatch exec [float]kitty less $HOME/.config/lostshell/keybinds.conf;;
        *Settings) show_settingsMenu;;
        "⏻ Power Menu") show_powerMenu;;
        esac
}


## Checking arguments
if [[ -n "$1" ]]; then
    case "$1" in
        places) show_placesMenu;;
        docs) show_docsMenu;;
        settings) show_settingsMenu;;
        power) show_powerMenu;;
        tools) show_toolsMenu;;

    esac
    exit 0
fi

show_mainMenu
