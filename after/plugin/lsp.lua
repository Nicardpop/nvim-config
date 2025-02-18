-- lsp.lua

-- Reserve a space in the gutter
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})
-- dart lsp server 
require'lspconfig'.dartls.setup{ 
  cmd = { "dart", 'language-server', '--protocol=lsp' }, 
}
-- Install and configure Mason
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'cssls',       -- CSS
    'html',        -- HTML
    'tsserver',    -- JavaScript/TypeScript
    'pyright',     -- Python
    'lua_ls',      -- Lua
    'clangd'      -- C/C++
  },
  automatic_installation = true,  -- Enable automatic installation
})

-- Set up LSP with Mason-LSPConfig
local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({})
  end,
})

-- Completion setup
local cmp = require('cmp')
require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
  snippet = {
      expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For luasnip users
      end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Navigate to the previous item in the completion menu.
    ['<C-n>'] = cmp.mapping.select_next_item(),  -- Navigate to the next item in the completion menu.
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),  -- Confirm the selected item (auto-select the first item).
    ["<C-S>"] = cmp.mapping.complete(),  -- Manually trigger the completion menu.
  }),

  sources = cmp.config.sources({

    { name = 'nvim_lsp' },    -- Use LSP-based completions.
    { name = 'luasnip'},
  }, {
    { name = 'buffer' },       -- Use the current buffer for completion suggestions.
  })
})
-- Filetype-specific settings for Dart
cmp.setup.filetype('dart', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip'},
  }, {
    { name = 'buffer' },
  })
})
require('flutter-tools')
-- for dart files auto formating
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.dart",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
