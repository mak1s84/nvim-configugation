-- Mapping for moving strings
vim.cmd([[
 nnoremap <A-j> :m .+1<CR>==
 nnoremap <A-k> :m .-2<CR>==
 inoremap <A-j> <Esc>:m .+1<CR>==gi
 inoremap <A-k> <Esc>:m .-2<CR>==gi
 vnoremap <A-j> :m '>+1<CR>gv=gv
 vnoremap <A-k> :m '<-2<CR>gv=gv
]])



local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

-- Turn of Highlight, please
map('n', '<leader>]', ':nohlsearch<CR>', opts)

-- Save file, please
map('n', '<leader>w', ':write<CR>', opts)
