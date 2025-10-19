{
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.whitesur-cursors;
    name = "WhiteSur-Cursors";
    size = 16;
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.whitesur-gtk-theme;
      name = "WhiteSur-Dark";
    };

    iconTheme = {
      package = pkgs.whitesur-icon-theme;
      name = "WhiteSur-ark";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}