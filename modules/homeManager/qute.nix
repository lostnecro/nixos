{ config, pkgs, ... }:

{
    programs.qutebrowser = {
        enable = true;
        settings = {
            tabs.position = "bottom";
            url.searchengines = {
                DEFAULT = "https://duckduckgo.com/?q={}";
                google = "https://www.google.com/search?q={}";
                wiki = "https://en.wikipedia.org/wiki/{}";
            };
            url.default_page = "https://start.duckduckgo.com/";
            content.blocking.method = "adblock";
            content.cookies.accept = "no-3rdparty";
            content.javascript.enabled = true;
            content.images = true;
            content.notifications.enabled = false;
            downloads.location.directory = "~/Downloads";
            editor.command = ["ghostty" "-e" "nvim" "{}"];

            colors.webpage.preferred_color_scheme = "dark";
            colors.webpage.darkmode.enabled = true;

            content.geolocation = false;
            auto_save.session = false;
        };
    };
}