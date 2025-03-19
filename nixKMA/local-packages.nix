{ pkgs, ... }: { 
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
    vim
    htop
    nano
    mc
    wget
    unzip
    p7zip
    tmux
    zip
    ranger
    btop
    gcc
    kbd
    unrar
    neofetch
    git
  ];
}
