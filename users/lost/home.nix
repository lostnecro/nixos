{ config, pkgs, inputs, ... }:

{
  home.username = "lost";
  home.homeDirectory = "/home/lost";
  home.stateVersion = "25.05";

  imports = [
    ../../modules/homeManager/firefox.nix
  ];
}
