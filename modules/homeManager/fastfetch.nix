{ pkgs, inputs, ... }:

{
    programs.fastfetch = {
        enable = true;
        settings = {
            ascii = "auto";
            info = [
                "os"
                "host"
                "kernel"
                "uptime"
                "packages"
                "shell"
                "resolution"
                "de"
                "wm"
                "wmTheme"
                "theme"
                "icons"
                "font"
                "cpu"
                "gpu"
                "memory"
            ];
        };
    };
}