{
  description = "NixKMA configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    stateVersion = "24.11";
    user = "admin";
    hostname = "nixKMA";
  in {
    nixosConfigurations.${hostname} = inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      
      modules = [
        ./nixKMA/configuration.nix
      ];

      specialArgs = {
        inherit inputs stateVersion user hostname;
      };
    };

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}
