{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };
  
  home.packages = with pkgs; [
    ripgrep
    tree-sitter
    lua54Packages.luarocks
  ];

  home.file.".config/nvim" = {
    source = ./config/nvim;
    recursive = true;
  };
}
