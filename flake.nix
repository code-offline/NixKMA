{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
    system = "x86_64-linux";
    stateVersion = "24.11";
    user = "student";
  in {
    colmena = {
      meta = {
        nixpkgs = import nixpkgs {
          description = "NixKMA configuration";

          inherit system;
        };

        specialArgs = {
          inherit inputs stateVersion user;
        };
      };

      defaults = { nixpkgs, home-manager, ... }: {
        imports = [
          ./nixKMA/configuration.nix
        ];

        fileSystems."/" = {
          device = "/dev/sda2";
          fsType = "ext4";
        };
      };

      "192.168.1.148" = {
        networking.hostName = "test1";
      };
    };
  };
}
