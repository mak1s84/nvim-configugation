local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

-- Nvim-tree, the file manager
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
