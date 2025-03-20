{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      # Python
      ms-python.python
      ms-python.debugpy

      # Web
      bierner.comment-tagged-templates
      vue.volar
    ];
  };
}
