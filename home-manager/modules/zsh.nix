{ pkgs, config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };
    
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];
    
    initExtraFirst = "source ~/.p10k.zsh";

    shellAliases = {
        ".." = "cd ..";
    };
    
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
  };
}
