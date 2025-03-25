{
  boot.loader = {
    grub = {
      enable = true;
      efiSupport = true;
      useOSProber = true;
      device = "nodev";
      default = 2;
    };
    timeout = 10;
    efi.canTouchEfiVariables = true;
  };
}
