{config, inputs, pkgs, ...}:

{users.users.lost = {
    isNormalUser = true;
    description = "Lost";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
};
}