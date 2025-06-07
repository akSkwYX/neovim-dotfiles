{
  description = "My Neovim configuration as a flake module";

  outputs = { self, ... }: {
    homeModules.default = import ./neovim-module.nix;
  };
}
