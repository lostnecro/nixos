{ config, pkgs, ... }:

{
  home.username = "lost";
  home.homeDirectory = "/home/lost";
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
