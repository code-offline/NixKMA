{
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    allowed-users = [ "root" ];
    trusted-users = [ "root" ];
  };
}
