{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
    };
    # firefox-addons = {
    #   url = "github:nix-community/nur-combined?dir=repos/rycee/firefox-addons";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable"; 
    ignis = {
      url = "github:ignis-sh/ignis";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, chaotic, home-manager, ... }@inputs: {
    nixosConfigurations = {
    "laptop" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/laptop/configuration.nix
        home-manager.nixosModules.home-manager
        {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.lost = import ./users/lost/home.nix;
            home-manager.extraSpecialArgs = { inherit inputs; };
          }
        chaotic.nixosModules.default
      ];
    };
    };
  };
}
