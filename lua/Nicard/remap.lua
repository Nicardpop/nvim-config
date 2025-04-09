vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

-- for moving highlighted lines
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")


-- for comment/incomment
vim.keymap.set("n", "<C-_>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })

-- for deleting highlighted text
vim.keymap.set("x","<leader>p","\"_dp")


