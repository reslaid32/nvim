#!/bin/bash

PLUGPATH="$HOME/.local/share/nvim/site/pack/plugins/start"

printf "  == Uninstalling Neovim plugins...\n"
rm -rf $PLUGPATH/gitsigns.nvim
rm -rf $PLUGPATH/plenary.nvim
rm -rf $PLUGPATH/nvim-cmp
rm -rf $PLUGPATH/cmp-nvim-lsp
rm -rf $PLUGPATH/nvim-lspconfig
rm -rf $PLUGPATH/nvim-treesitter
rm -rf $PLUGPATH/nvim-tree
rm -rf $PLUGPATH/nvim-web-devicons
echo "  == OK"

printf "  == Restoring backup of ~/.config/nvim...\n"
if [ -d ~/.config/nvim.bk ]; then
  rm -rf ~/.config/nvim
  mkdir -p ~/.config/nvim
  mv ~/.config/nvim.bk/* ~/.config/nvim/
  rmdir ~/.config/nvim.bk
  echo "  == Backup restored."
else
  echo "  == No backup found, skipping restore."
fi

echo "  == Uninstall completed."
