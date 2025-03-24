{
  fileSystems."/" = { 
    device = "/dev/sdb2";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/sdb1";
    fsType = "vfat";
    options = [ "fmask=0022" "dmask=0022" ];
  };
}
