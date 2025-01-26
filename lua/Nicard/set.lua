

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.g.mapleader = " "
-- Enable clipboard support for system clipboard
vim.opt.clipboard = 'unnamedplus'  -- Use the system clipboard for unnamed register

-- Optional: Configure keymaps for clipboard operations
vim.keymap.set('n', '<leader>y', '"+y') -- Yank to system clipboard
vim.keymap.set('v', '<leader>y', '"+y') -- Yank selected text to system clipboard
vim.keymap.set('n', '<leader>p', '"+p') -- Paste from system clipboard
vim.keymap.set('v', '<leader>p', '"+p') -- Paste selected text from system clipboard
