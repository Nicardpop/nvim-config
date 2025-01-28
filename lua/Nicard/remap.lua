vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

-- for moving highlighted lines
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")




-- for deleting highlighted text
vim.keymap.set("x","<leader>p","\"_dp")


