local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

    --Previonis buffer, please
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)
