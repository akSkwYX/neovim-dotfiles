{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };
  
  home.packages = with pkgs; [
    ripgrep
    tree-sitter
  ];

  home.file.".config/nvim" = {
    source = ./config/nvim/lua;
    recursive = true;
  };
}
