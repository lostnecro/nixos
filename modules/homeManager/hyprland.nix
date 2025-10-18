{ pkgs, ... }:

{
    xdg.configFile = {
    "hyprland/hyprland.conf".source = ./hyprland/hyprland.conf;
    "hyprland/config.conf".source = ./hyprland/config.conf;
    "hyprland/binds.conf".source = ./hyprland/binds.conf;
    "hyprland/defaults.conf".source = ./hyprland/defaults.conf;
    "hyprland/env.conf".source = ./hyprland/env.conf;
    "hyprland/Monitors.conf".source = ./hyprland/Monitors.conf;
    "hyprland/rules.conf".source = ./hyprland/rules.conf;
    };
}