# ~/etc/nixos/modules/home-manager/flatpak.nix
{ pkgs, ... }:

{
  services.flatpak.packages = [
    { appId = "it.mijorus.gearlever";           origin = "flathub"; },
  ];
}