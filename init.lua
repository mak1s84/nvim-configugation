  -- Coq_nvim must launch and setup before LSP
require('settings.Coq_nvim')

    -- Setup
require('settings')

    -- Keybindings
require('mappings')

    -- Packages
require('packer-config')

    -- Themes
-- require('colorschemes-config.nightfox')
require("colorschemes-config.gruvbox-material")
require("colorschemes-config.kanagawa")

    -- mappings
 require('mappings')

    -- LSP
require('lsp-config.language-server');


vim.api.nvim_exec([[
    augroup jdtls_setup2
    autocmd!
    autocmd FileType * lua require("telescope").load_extension("dap")
    autocmd FileType * lua require("dapui").setup()
    autocmd FileType * lua require("nvim-dap-virtual-text").setup()
    augroup end
]], true)
