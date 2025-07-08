# Neovim Dotfiles (Nix Flake)

A fully‑configured, highly‑customizable Neovim setup managed as a [Nix flake]. You can:

- Plug it into your NixOS or Home‑Manager configuration as a flake module  
- Or simply copy the `config/nvim` folder to use it with any other setup

---

## Features

- **Lazy‑loaded plugins** via [`lazy.nvim`] for lightning‑fast startup  
- **Editor options** and sensible defaults in `vim-options.lua`  
- **Custom keymaps** in `keymaps.lua`  
- **Built‑in support** for:  
  - LSP, autocompletion & snippets  
  - Treesitter-based highlighting  
  - Fuzzy‑finding (Telescope)  
- **Portable**: use as a flake module or standalone dotfiles  

---

## Prerequisites

- [Nix] >= 2.4 (with flakes enabled)  
- Either:
  - NixOS (recommended)  
  - Any Linux/macOS with Home‑Manager  

---

## Quickstart

### As a Nix flake module

1.  Add this repo to your `flake.nix` inputs:

    ```nix
    inputs.neovim = {
      url = "github:akSkwYX/neovim-dotfiles";
      # Optionally pin to a tag/commit for stability
    };
    ```

2.  In your `outputs`:

    ```nix
    outputs = { self, nixpkgs, neovim, ... }: {
      homeModules.default = neovim.homeModules.default;
    };
    ```

3.  Rebuild your Home‑Manager or NixOS configuration:

    ```bash
    nixos-rebuild switch  # NixOS
    home-manager switch   # Non‑NixOS
    ```

### Manual Installation

If you just want the dotfiles without Nix:

1.  Clone this repo (or copy the `config/nvim` folder):

    ```bash
    git clone https://github.com/akSkwYX/neovim-dotfiles.git
    cp -r neovim-dotfiles/config/nvim ~/.config/nvim
    ```

2.  Install [lazy.nvim]:

    ```bash
    git clone https://github.com/folke/lazy.nvim.git \
      ~/.local/share/nvim/lazy/lazy.nvim
    ```

3.  Launch Neovim and run:

    ```vim
    :Lazy sync
    ```

---

## Repository Structure

```
.
|-- config
|   `-- nvim
|       |-- init.lua
|       `-- lua
|           `-- config
|               |-- keymaps.lua
|               |-- lazy.lua
|               `-- vim-options.lua
|-- flake.nix
|-- neovim-module.nix
`-- README.md
```

---

## Configuration

- **Plugins**: `config/lazy.lua`  
- **Options**: `config/vim-options.lua`  
- **Keymaps**: `config/keymaps.lua`  

Feel free to split these into more files, or add your own under `lua/config/`.

---

## Contributing

1.  Fork the repo  
2.  Create a feature branch (`git checkout -b my-feature`)  
3.  Commit your changes (`git commit -m "Add …"`)  
4.  Push to your branch (`git push origin my-feature`)  
5.  Open a pull request

---

## Contact

Have questions or suggestions? Reach me at:

[akskwyx@gmail.com](mailto:akskwyx@gmail.com)
