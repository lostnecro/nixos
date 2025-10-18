{ config, pkgs, lib, ... }:

let
    # Read email from file
    userEmail = lib.strings.trim (builtins.readFile ./email.txt);
in

{
    programs.git = {
    enable = true;
    userName = "Lost";
    userEmail = userEmail;
    extraConfig = {
        init.defaultBranch = "main";
    };
    };
}