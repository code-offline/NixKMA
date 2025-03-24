{ pkgs, ... }: {
  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "sdhci_pci" ];
  boot.kernelModules = [ "kvm-amd" "amdgpu" ];

  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      amdvlk
      mesa
    ];
  };

  hardware.enableRedistributableFirmware = true;
}
