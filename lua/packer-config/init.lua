return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use 'EdenEast/nightfox.nvim'
    use 'Murtaza-Udaipurwala/gruvqueen'
    use "rebelot/kanagawa.nvim"

    -- A snazzy bufferline for Neovim
    use { 'akinsho/bufferline.nvim', tag = "v2.*" }
    -- A blazing fast and easy to configure neovim statusline
    use  'nvim-lualine/lualine.nvim'
 --   use 'marko-cerovac/material.nvim'
    -- beautiful icon
    use 'kyazdani42/nvim-web-devicons'
    --A file explorer tree for neovim written in lua
    use 'kyazdani42/nvim-tree.lua'

    -- LSP setup
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- JAVA language server
    use 'mfussenegger/nvim-jdtls'

    -- Debugger adapter protokol
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'mfussenegger/nvim-dap'
    use 'nvim-telescope/telescope-dap.nvim'
    use 'jbyuki/one-small-step-for-vimkind'         -- LUA Debugger

    -- Tree sitter, plus repo for the using languages
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'tree-sitter/tree-sitter-java' -- TS for java
    use 'Azganoth/tree-sitter-lua'  -- TS for lua
    use 'vigoux/tree-sitter-viml'   -- TS for viml
    use 'tree-sitter/tree-sitter-bash'  --TS for bash
    use 'tree-sitter/tree-sitter-json'  --TS for json

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'}
        }
    }

    -- Neovim completition
    use {'ms-jpq/coq_nvim', branch= 'coq'}
    use {'ms-jpq/coq.artifacts', branch= 'artifacts'}
    use {'ms-jpq/coq.thirdparty', branch= '3p'}

    -- Terminal integration
    use 'voldikss/vim-floaterm'

    -- Autopair
    use 'windwp/nvim-autopairs'

    -- Comment code
    use 'numToStr/Comment.nvim'

    -- Root project
    use {'shaeinst/penvim'}

    -- Neovim plugin to improve the default vim.ui interfaces
  use {'stevearc/dressing.nvim'}
end)
