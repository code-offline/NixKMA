{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: let
    system = "x86_64-linux";
    stateVersion = "24.11";
  in {
    colmena = {
      meta = {
        nixpkgs = import nixpkgs {
          description = "NixKMA configuration";
          overlays = [];

          inherit system;
        };

        specialArgs = {
          inherit inputs stateVersion;
        };
      };

      defaults = { nixpkgs, ... }: {
        imports = [
          ./nixKMA/configuration.nix
        ];

	deployment.targetPort = 2403;
      };

      "10.0.0.163" = {
        networking.hostName = "nixKMA1";
      };
      "10.0.0.175" = {
        networking.hostName = "nixKMA6";
	imports = [ ./nixKMA/modules/amd.nix ];
      };
      "10.0.0.124" = {
        networking.hostName = "nixKMA7";
	imports = [ ./nixKMA/modules/amd.nix ];
      };
    };
  };
}
