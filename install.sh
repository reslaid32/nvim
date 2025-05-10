#!/bin/bash

USECUR=true
PLUGPATH="$HOME/.local/share/nvim/site/pack/plugins/start"

printf "  == Installing Neovim plugins...\n"
mkdir -p $PLUGPATH
rm -rf $PLUGPATH/gitsigns.nvim
rm -rf $PLUGPATH/plenary.nvim
rm -rf $PLUGPATH/nvim-cmp
rm -rf $PLUGPATH/cmp-nvim-lsp
rm -rf $PLUGPATH/nvim-lspconfig

rm -rf $PLUGPATH/nvim-treesitter
rm -rf $PLUGPATH/nvim-tree
rm -rf $PLUGPATH/nvim-web-devicons

git clone https://github.com/lewis6991/gitsigns.nvim $PLUGPATH/gitsigns.nvim
git clone https://github.com/nvim-lua/plenary.nvim $PLUGPATH/plenary.nvim
git clone https://github.com/hrsh7th/nvim-cmp $PLUGPATH/nvim-cmp
git clone https://github.com/hrsh7th/cmp-nvim-lsp $PLUGPATH/cmp-nvim-lsp
git clone https://github.com/neovim/nvim-lspconfig $PLUGPATH/nvim-lspconfig

git clone https://github.com/nvim-treesitter/nvim-treesitter $PLUGPATH/nvim-treesitter
git clone https://github.com/nvim-tree/nvim-tree.lua.git $PLUGPATH/nvim-tree
git clone https://github.com/nvim-tree/nvim-web-devicons.git $PLUGPATH/nvim-web-devicons
echo "  == OK"

printf "  == Backing up ur ~/.config/nvim (~/.config/nvim.bk)...\n"
mkdir -p ~/.config/nvim.bk
mv ~/.config/nvim/* ~/.config/nvim.bk
echo "  == OK"

if [ "$USECUR" = true ]; then
  printf "  == Installing local Neovim config...\n"
  rm -rf ~/.config/nvim
  mkdir -p ~/.config/nvim
  cp ./init.lua ~/.config/nvim/
  echo "  == OK"
else
  printf "  == Cloning Neovim config from GitHub...\n"
  rm -rf ~/.config/nvim
  git clone https://github.com/reslaid32/nvim ~/.config/nvim
  echo "  == OK"
fi
