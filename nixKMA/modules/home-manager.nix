{ inputs, pkgs, ... }: {
  environment.systemPackages = [ pkgs.home-manager ];
  
  imports = [ inputs.home-manager.nixosModules.default ];
  
  home-manager.backupFileExtension = "backup";
}
