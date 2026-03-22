vim.g.mapleader = " "

-- File Manager
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Format
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = "Format code" })

-- Save on C-s
vim.keymap.set({ "n", "i" }, "<C-s>", "<Cmd>w<CR>")

-- Better windows navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- Move and center view
vim.keymap.set("n", "<C-j>", "jzz", { desc = "Move down and center" })
vim.keymap.set("n", "<C-k>", "kzz", { desc = "Move up and center" })
