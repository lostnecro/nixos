{ pkgs, config, ... }:

{
    programs.flameshot = {
        enable = true;
        settings = {
            savePath = "${config.home.homeDirectory}/Pictures/Screenshots";
            useGrimAdapter = true;
        };
    };
}