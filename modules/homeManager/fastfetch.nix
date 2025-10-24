{ pkgs, inputs, ... }:

{
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                type = "kitty";
                source = "./logo.webp";
            };
        };
    };
}