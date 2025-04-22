#!/bin/bash

printf "  == Uninstalling Neovim plugins...\n"
rm -rf ~/.local/share/nvim/site/pack/plugins/start/gitsigns.nvim
rm -rf ~/.local/share/nvim/site/pack/plugins/start/plenary.nvim
rm -rf ~/.local/share/nvim/site/pack/plugins/start/nvim-cmp
rm -rf ~/.local/share/nvim/site/pack/plugins/start/cmp-nvim-lsp
rm -rf ~/.local/share/nvim/site/pack/plugins/start/nvim-lspconfig
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
