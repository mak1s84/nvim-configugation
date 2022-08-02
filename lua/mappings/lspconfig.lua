local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '


-- Format my code, please
map('n', '<leader>f', '<ESC><cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- Show me the hover, please
map('n', 'K', '<ESC><cmd>lua vim.lsp.buf.hover()<CR>', opts)

-- Show me the references, please
map('n', '<leader>ref', '<ESC><Cmd>lua vim.lsp.buf.references()<CR>', opts)

-- Go to declaration
map('n', '<leader>gD', '<ESC><Cmd>lua vim.lsp.buf.declaration()<CR>', opts)

-- Go to definition
map('n', '<leader>gd', '<ESC><Cmd>lua vim.lsp.buf.definition()<CR>', opts)

-- Show me the implementations, please
map('n', '<leader>gi', '<ESC><Cmd>lua vim.lsp.buf.implementation()<CR>', opts)

-- Show me the signature help, please
map('n', '<leader>h', '<ESC><Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

-- Show me the workspase symbol, please
map('n', '<leader>ws', '<ESC><Cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)

-- Show me the code actions, please
map('n', '<leader>ca', '<ESC><Cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- I'm whant to rename something!
map('n', '<leader>rn', '<ESC><Cmd>lua vim.lsp.buf.rename(vim.fn.input("New Name: "))<CR>', opts)

-- Code lens refresh, please
map('n', '<leader>clr', '<ESC><Cmd>lua vim.lsp.codelens.refresh()<CR>', opts)

-- Code lens run. please
map('n', '<leader>cl', '<ESC><Cmd>lua vim.lsp.codelens.run()<CR>', opts)

-- If using vscode-java-test
map('n', '<leader>tc', '<ESC><Cmd>lua require("jdtls").test_class()<CR>', opts)
map('n', '<leader>tm', '<ESC><Cmd>lua require("jdtls").test_nearest_method()<CR>', opts)


vim.cmd([[
command! -buffer JdtCompile lua require('jdtls').compile()
command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
command! -buffer JdtJol lua require('jdtls').jol()
command! -buffer JdtBytecode lua require('jdtls').javap()
command! -buffer JdtJshell lua require('jdtls').jshell()
command! -buffer JdtRefreshDebugConfigs lua require('jdtls.dap').setup_dap_main_class_configs()
]])

--[[
vim.cmd [[setlocal shiftwidth=4]]
-- vim.cmd [[setlocal tabstop=4]] ]]

-- Debugger setup keymap

map('n', '<leader>dp', '<ESC><Cmd>lua require("dap").toggle_breakpoint()<CR>', opts)
map('n', '<leader>dc', '<ESC><Cmd>lua require("dap").continue()<CR>', opts)
map('n', '<F2>', ':DapStepOver<CR>', opts)
map('n', '<F3>', ':DapStepInto<CR>', opts)
map('n', '<F4>', ':DapStepOut<CR>', opts)
map('n', '<leader>sbp', '<ESC><Cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opts)
map('n', '<leader>dbp', '<ESC><Cmd>lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>' , opts)
map('n', '<leader>dro', '<ESC><Cmd>lua require("dap").repl.open()<CR>', opts)
map('n', '<leader>drl', '<ESC><Cmd>lua require("dap").run_last()<CR>', opts)
--[[ vim.cmd "command! -buffer JdtRefreshDebugConfigs lua require('jdtls.dap').setup_dap_main_class_configs()" ]]


map('n', '<leader>dm', '<ESC><Cmd>lua require("dapui").toggle()<CR>', opts)
