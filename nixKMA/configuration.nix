{ stateVersion, ... }: {
  imports = [
    ./modules
    ./local-packages.nix
    ./hardware-configuration.nix
  ];

  console = {
    font = "Cyr_a8x16";
  };

  system.stateVersion = stateVersion;
}
