{ pkgs, ... }: { 
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
    # Основные пакеты
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
    unrar
    neofetch
    git

    # Пакеты для разработки
    python39
    jdk23
    nodejs_23
    docker

    helix
    jetbrains.idea-community
    jetbrains.pycharm-community
    
    chromium
    dbeaver-bin
    postman
    drawio

    vscode
    
    # Плагины vscode (не работает)
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        ms-python.python
        ms-python.debugpy
        vue.volar
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

      ];
    })

    # Офис
    libreoffice
    blender
    krita
    inkscape

    # Admin
    colmena
    ghostty
  ];
}
