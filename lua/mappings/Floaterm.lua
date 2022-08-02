
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

    --Previonis buffer, please

map('n', '<C-f>', ':FloatermNew! --autoinsert=false --height=20 --width=60 --wintype=vsplit --name=floaterm1 --position=botright<CR>', opts)

    --Launch java
map('n', '<F7>', ':FloatermNew --height=20 --width=60 --wintype=vsplit --position=belowright --autoinsert=false --autoclose=1 javac -g % <CR>', opts)
map('n', '<F8>', ':FloatermNew --height=20 --width=60 --wintype=vsplit --position=belowright --autoinsert=false --autoclose=0 java % <CR>', opts)
    -- Launch gradle java program
map('n', '<F9>', ':FloatermNew --height=20 --width=60 --wintype=vsplit --position=belowright --autoinsert=false --autoclose=0 gradle run <CR>', opts)
    -- Launch LUA program
map('n', '<F12>', ':FloatermNew --height=20 --width=60 --wintype=vsplit --position=belowright --autoinsert=false --autoclose=0 lua % <CR>', opts)
