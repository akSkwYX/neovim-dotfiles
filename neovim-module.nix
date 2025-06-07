{ config, pkgs, lib, ... }:
{
  options = {
    neovim.enable = lib.mkEnableOption "Enable neovim and it's configuration";
  };

  config = lib.mkIf config.neovim.enable {
    programs.neovim = {
      enable = true;
      package = pkgs.neovim;
    }
    
    home.packages = with pkgs; [
      ripgrep
      tree-sitter
    ];

    home.file.".config/nvim" = {
      source = ./config/nvim/lua;
      recursive = true;
    };
  };
}
