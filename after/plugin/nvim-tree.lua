-- Ensure nvim-tree is installed
require("nvim-tree").setup({
  view = {
    width = 25, -- Sidebar width
    side = "left", -- Sidebar position: "left" or "right"

  },
  renderer = {
    highlight_opened_files = "all", -- Highlight currently opened files
  },
  actions = {
    open_file = {
      quit_on_open = true, -- Close the tree when a file is opened
    },
  },
})
-- a --> for adding a new file / directory (for directory use the "/" after the name of the directory ex: user/config/newdir/)  
-- Keybindings for nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true }) -- Toggle file explorer
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>", { noremap = true, silent = true }) -- Refresh the tree
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>", { noremap = true, silent = true }) -- Find current file in tree
