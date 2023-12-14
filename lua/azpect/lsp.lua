local lspconfig = require('lspconfig') local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()
require("nvim-lsp-installer").setup {}


local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = { 'documentation', 'detail', 'additionalTextEdits' },
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Disable virtual text
        virtual_text = true,
        -- Enable gutter signs for diagnostics
        signs = true,
        -- Enable underline for diagnostics
        underline = true,
        -- Update diagnostics in insert mode
        update_in_insert = true,
        -- Set this to the maximum number of diagnostics you want to see (optional)
        max_diagnostics = 100,  -- Adjust as needed
    }
)

local servers = { 'tailwindcss', 'html', 'cssls', 'tsserver', 'clangd', 'gopls', 'rust_analyzer', 'htmx', 'jdtls', 'pylsp', 'bashls', 'lua_ls', 'sqlls' }

lspconfig.tsserver.setup { on_attach = on_attach }

for _, lsp in ipairs(servers) do
    local config = {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    lspconfig[lsp].setup(config)
end

lspconfig.clangd.setup {
    filetypes = { 'c', 'cpp' },
    root_dir = require'lspconfig'.util.root_pattern("compile_commands.json", "CMakeLists.txt", "Makefile", ".git"),
}


cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' }, -- LSP as the source
        { name = 'tailwindcss' },
    },
})

-- Default config
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    -- Rename remap
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
  end,
})
