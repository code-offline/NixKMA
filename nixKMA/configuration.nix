{ pkgs, stateVersion, hostname, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./modules
    ./local-packages.nix
  ];

  console = {
    font = "Cyr_a8x16";
  };

  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
