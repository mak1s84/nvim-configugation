--require("nvim-lsp-installer").setup {}
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
--[[ vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts) ]]




vim.api.nvim_exec([[
 " autocmd ColorScheme * |
  hi LspReferenceRead guifg=#1aad16 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
  hi LspReferenceText guibg=#4f4764 ctermbg=239 gui=bold,undercurl cterm=bold,undercurl guisp=#FD9720
  hi LspReferenceWrite guifg=#1aad16 ctermfg=34 gui=bold,undercurl cterm=bold,undercurl guisp=#FD9720

  hi javaParen ctermfg=blue guifg=#0000ff " Highlight nested parents bracket
  hi link javaParen Comment "
 
 augroup lsp_document_highlight
  autocmd!
  autocmd! CursorHold <buffer> lua vim.lsp.buf.document_highlight()
  autocmd! CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
  autocmd! CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  augroup END
]], false)



-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
-- require('lspconfig').jdtls.setup{
--    on_attach = on_attach,
--    flags = lsp_flags,
-- }

local lsp = require "lspconfig"
--[[ local coq = require "coq" -- add this ]]

    -- jsonls setup
--[[ local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp.jsonls.setup{
    capabilities = capabilities,
} ]]

    -- python setup + completition
lsp.pyright.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
--[[ lsp.pyright.setup(coq.lsp_ensure_capabilities()) -- after ]]

    -- LUA language server setup + completition
lsp.sumneko_lua.setup({
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
})
--[[ lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities()) -- after ]]

    -- Bash language server setup + completition
--[[ lsp.bashls.setup{}                              -- before ]]
--[[ lsp.bashls.setup(coq.lsp_ensure_capabilities()) -- after ]]

