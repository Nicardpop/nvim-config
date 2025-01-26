-- Require and configure nvim-autopairs
local npairs = require("nvim-autopairs")

-- Default setup
npairs.setup({
  check_ts = true, -- Enable Treesitter integration (if Treesitter is installed)
  disable_filetype = { "TelescopePrompt", "vim" }, -- Disable autopairs in specific filetypes
})

-- Optional: Integrate with nvim-cmp if using
local cmp_status_ok, cmp = pcall(require, "cmp")
if cmp_status_ok then
  local cmp_autopairs = require("nvim-autopairs.completion.cmp")
  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

