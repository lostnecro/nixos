{ config, pkgs, inputs, ... }:

{
  home.username = "lost";
  home.homeDirectory = "/home/lost";
  home.stateVersion = "25.05";

  imports = [
    ../../modules/homeManager/globalHome.nix
    inputs.ignis.homeManagerModules.default
  ];

  dconf.enable = true;
  dconf.settings = {
    # This sets the global color scheme preference for all supporting GNOME/GTK4 apps
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}
