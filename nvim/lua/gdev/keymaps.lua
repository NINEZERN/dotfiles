vim.g.mapleader = " "


local map = vim.keymap.set
-- File Manager
map("n", "<leader>e", ":Explore<CR>")

-- Format
map('n', '<leader>f', vim.lsp.buf.format, { desc = "Format code" })

-- Save on C-s
map({ "n", "i" }, "<C-s>", "<Cmd>w<CR>")

-- Better windows navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("t", "<Esc>", [[<C-\><C-n>]])

-- Move and center view
map("n", "<C-j>", "jzz", { desc = "Move down and center" })
map("n", "<C-k>", "kzz", { desc = "Move up and center" })

-- Autocomplition
-- map({ "i", "n" }, "<C-Space>", "<C-x><C-o>")

-- Terminal
map("n", "<A-h>", ":below term<CR>i")

-- Compilation
map("n", "<leader>r", ":make!<CR>")
map("n", "<leader>R", ":set makeprg=")
