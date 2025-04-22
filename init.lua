local lspconfig = require('lspconfig')
local gitsigns = require('gitsigns')
local cmp = require'cmp'

vim.cmd("highlight Normal guibg=#0d0d0d guifg=#d0d0d0")
vim.cmd("highlight Comment guifg=#555555 gui=italic")
vim.cmd("highlight Keyword guifg=#5fd7ff gui=bold")
vim.cmd("highlight String guifg=#87d787")
vim.cmd("highlight Function guifg=#af87ff")
vim.cmd("highlight Type guifg=#5fd7af gui=bold")
vim.cmd("highlight Error guifg=#ff5f5f gui=bold")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.diagnostic.config({
  virtual_text = {
    prefix = '●', 
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' }, 
  }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pyright.setup({
  capabilities = capabilities
})

lspconfig.clangd.setup({ capabilities = capabilities })
-- lspconfig.lua_ls.setup({ capabilities = capabilities })

gitsigns.setup {
  signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '━' },
    topdelete    = { text = '━' },
    changedelete = { text = '╏' },
  },
  signcolumn = true, 
  numhl      = false,
  linehl     = false,
}

vim.cmd("set termguicolors")
