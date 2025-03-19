{
  description = "NixKMA configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
    system = "x86_64-linux";
    stateVersion = "24.11";
    user = "student";
    hostname = "nixKMA";
  in {
    nixosConfigurations.nixKMA = inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      
      modules = [
        ./nixKMA/configuration.nix
      ];

      specialArgs = {
        inherit inputs stateVersion user hostname;
      };
    };
  };
}
