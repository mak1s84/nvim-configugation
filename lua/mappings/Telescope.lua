local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

map('n', '<leader>tf', '<ESC><cmd>lua require("telescope.builtin").find_files()<CR>', opts)
map('n', '<leader>tg', '<ESC><cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
map('n', '<leader>tb', '<ESC><cmd>lua require("telescope.builtin").buffers()<CR>', opts)
map('n', '<leader>th', '<ESC><cmd>lua require("telescope.builtin").help_tags()<CR>', opts)
map('n', '<leader>fb', '<ESC><cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>', opts)
map('n', '<leader>tk', '<ESC><cmd>lua require("telescope.builtin").keymaps()<CR>', opts)
map('n', '<leader>tt', '<ESC><cmd>lua require("telescope.builtin").treesitter()<CR>', opts)





