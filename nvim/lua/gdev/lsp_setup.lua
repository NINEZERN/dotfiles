

vim.lsp.enable({"clangd", "basedpyright"})

vim.diagnostic.config({
    virtual_lines = true,  -- show diagnostics inline as virtual lines
    virtual_text = false,  -- disable inline virtual text if using virtual_lines
})

-- LSP keymaps
local opts = { noremap=true, silent=true }

-- Hover documentation
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover info" })
-- Only apply mappings when the completion menu is visible
vim.keymap.set("i", "<C-j>", "pumvisible() ? '<C-n>' : '<C-j>'", { expr = true, noremap = true })
vim.keymap.set("i", "<C-k>", "pumvisible() ? '<C-p>' : '<C-k>'", { expr = true, noremap = true })
vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)

-- Enter confirms selection, doesn't insert a newline if menu is visible
vim.keymap.set("i", "<CR>", "pumvisible() ? '<C-y>' : '<CR>'", { expr = true, noremap = true })

-- Signature help (Insert mode)
vim.keymap.set("i", "<C-S>", vim.lsp.buf.signature_help, { desc = "Signature help" })

-- Rename symbol
vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- Code actions
vim.keymap.set({ "n", "v" }, "gra", vim.lsp.buf.code_action, { desc = "Code action" })

-- References
vim.keymap.set("n", "grr", vim.lsp.buf.references, { desc = "Show references" })

-- Implementation
vim.keymap.set("n", "gri", vim.lsp.buf.implementation, { desc = "Go to implementation" })

-- Document symbols
vim.keymap.set("n", "gO", vim.lsp.buf.document_symbol, { desc = "Document symbols" })

-- Diagnostics navigation
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "[D", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Prev error" })
vim.keymap.set("n", "]D", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Next error" })

