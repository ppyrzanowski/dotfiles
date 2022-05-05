## My nvim configuration

This configuration is based on [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch).

Working on nvim v0.8.0dev on Ubuntu 22.04.
All Plugins will be downloaded from git repos.

To fix the clipboard run this:

`sudo apt install xsel`

Python package could be needed:

`pip install pynvim --upgrade`

Neovim node support:

`npm i -g neovim`

To get a healthcheck:

`:checkhealth` in nvim

## Features
- Decent Options set
- Keymappings
- Syntax highlighting
- Language specific symbol completion (nvim-cmp)
- Language Server Protocols (LSP)
- Fuzzy finder (telescope.nvim)

## Commands included by Plugins

`:PackerInstall` - Install plugins

`:LspInfo` - Info about current buffer and attatched server protocols.

`:LspInstallInfo` - Install language servers from a GUI gui list.



