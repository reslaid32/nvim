#!/bin/bash

printf "  == Installing Neovim plugins...\n"
mkdir -p ~/.local/share/nvim/site/pack/plugins/start
rm -rf ~/.local/share/nvim/site/pack/plugins/start/gitsigns.nvim
rm -rf ~/.local/share/nvim/site/pack/plugins/start/plenary.nvim
rm -rf ~/.local/share/nvim/site/pack/plugins/start/nvim-cmp
rm -rf ~/.local/share/nvim/site/pack/plugins/start/cmp-nvim-lsp
rm -rf ~/.local/share/nvim/site/pack/plugins/start/nvim-lspconfig
git clone https://github.com/lewis6991/gitsigns.nvim ~/.local/share/nvim/site/pack/plugins/start/gitsigns.nvim
git clone https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/plugins/start/plenary.nvim
git clone https://github.com/hrsh7th/nvim-cmp ~/.local/share/nvim/site/pack/plugins/start/nvim-cmp
git clone https://github.com/hrsh7th/cmp-nvim-lsp ~/.local/share/nvim/site/pack/plugins/start/cmp-nvim-lsp
git clone https://github.com/neovim/nvim-lspconfig ~/.local/share/nvim/site/pack/plugins/start/nvim-lspconfig
echo "  == OK"

printf "  == Backing up ur ~/.config/nvim (~/.config/nvim.bk)...\n"
mkdir -p ~/.config/nvim.bk
mv ~/.config/nvim/* ~/.config/nvim.bk
echo "  == OK"

printf "  == Installing Neovim config...\n"
rm -rf ~/.config/nvim
git clone https://github.com/reslaid32/nvim ~/.config/nvim
echo "  == OK"
