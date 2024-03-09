vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --file tree mode

vim.keymap.set("i", "jk", "<ESC>") --escape

vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear / history

vim.keymap.set("n", "x", '"_x') --delete no copy

vim.keymap.set("n", "<leader>sv", "<C-w>s") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>v") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- equalize split screens
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab ? Tab Open
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab ? Tab Xlose
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab ? Tab Next
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab ? Tab Prev

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

