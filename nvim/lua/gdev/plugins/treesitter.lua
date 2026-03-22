return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false, -- load at startup
        config = function()
            require("nvim-treesitter").setup({
                highlight = { enable = true },
                indent = { enable = true },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        node_decremental = "grm",
                        scope_incremental = "grc",
                    },
                },
            })
        end,
    }
}
