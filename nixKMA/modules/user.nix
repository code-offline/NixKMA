{ user, ... }: {
  programs.zsh.enable = true;

  users = {
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "video" "networkmanager" "vboxusers" ];
    };
  };
}
