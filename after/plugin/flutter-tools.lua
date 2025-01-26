-- flutter-tools.lua
require("flutter-tools").setup({
  ui = {
    border = "rounded",  -- Set the border style for flutter-tools UI
  },
  decorations = {
    statusline = {
      app_version = true,
      device = true,
    },
  },
  lsp = {
    -- Pass cmp_nvim_lsp capabilities for the Dart language server
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = function(client, bufnr)
      local buf_map = function(mode, lhs, rhs, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, lhs, rhs, opts)
      end

      -- Example keymaps for Flutter-specific commands
      buf_map("n", "<leader>fr", ":FlutterRun<CR>")
      buf_map("n", "<leader>fq", ":FlutterQuit<CR>")
      buf_map("n", "<leader>fd", ":FlutterDevices<CR>")
      buf_map("n", "<leader>fe", ":FlutterEmulators<CR>")
    end,
  },
})

