{config, inputs, pkgs, ...}:

{users.users.lost = {
    isNormalUser = true;
    description = "Lost";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
};

home-manager = {
  extraSpecialArgs = { inherit inputs; };
  users = {
    "lost" = import ./home.nix;
    };
  };
}