local set = vim.opt

set.mouse = 'a'                               -- allow the mouse to be used in neovim
set.clipboard = 'unnamed,unnamedplus'         -- copy-paste OK

set.expandtab = true                          -- convert tabs to spaces
set.smarttab = true
set.shiftwidth = 4                            -- the number of spaces inserted for each indentation
set.tabstop = 4                               -- insert 4 spaces is equals 1

set.hlsearch = true                           -- highlight all matches on previous search pattern
set.incsearch = true
set.ignorecase = true                         -- ignore case in search patterns
set.smartcase = true

set.splitbelow = true                         -- force all horizontal splits to go below current window
set.splitright = true                         -- force all vertical splits to go to the right of current window
set.wrap = true                              -- display lines as one long line
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true                      -- set term gui colors (most terminals support this)

set.updatetime = 400                          -- I'm use it for variable highlighting
set.relativenumber = false                    -- set relative numbered line
set.number = true                             -- disable showing the numbers of the code lines
set.numberwidth = 2
set.wrap = false                              -- display lines as one long line
set.cursorline = true
set.hidden = true

set.textwidth = 80                            -- auto wrap after 80 characters in the line
set.completeopt = 'menuone,noselect'          -- open completion menu even for single item
                                              -- do not auto insert items from completion menu
                                              -- @warning - preview is removed. when it's on, default lsp opens a vertical tab
set.cursorline = true                         -- highlight the current cursor line.

set.foldlevelstart = 1                        -- auto code folding when openeing new file at level 1
set.foldmethod = 'syntax'                     -- code folding method to syntax
                                              -- common methods will be used such as curly braces

set.signcolumn = 'yes:1'                      -- error signs and warnings will be displayed in the number line
                                              -- usually it adds new column when signs, moving buffer to right side.
                                              -- adding a column create weird effect that's little bit hard for the eye
vim.g.java_highlight_functions = "style"
vim.g.java_highlight_java_io = 1
vim.g.java_highlight_debug = 1






require('bufferline').setup {}
require('settings.TreeSitter')
require('settings.Telescope')
require('telescope.previewers')
require('plenary.job')
require('plenary.async')
require('settings.lualine')
require('settings.NvimTree')
require('settings.Nvim-autopairs')
require('settings.Nvim-dap-virtual-text')
require('settings.Comment')
require('settings.Dressing')
