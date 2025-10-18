{ config, pkgs, lib, ... }:

let
    secrets = import ./secrets.nix;
in

{
    programs.git = {
    enable = true;
    userName = "Lost";
    userEmail = secrets.userEmail;
    extraConfig = {
        init.defaultBranch = "main";
    };
    };
}