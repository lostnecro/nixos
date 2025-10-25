{ pkgs, inputs, ... }:

{
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                type = "kitty";
                source = "/etc/nixos/modules/homeManager/logo.gif";
            };
        };
    };
}