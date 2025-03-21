{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.student = {
      isNormalUser = true;
      extraGroups = [ "video" "networkmanager" "vboxusers" ];
    };
  };
}
