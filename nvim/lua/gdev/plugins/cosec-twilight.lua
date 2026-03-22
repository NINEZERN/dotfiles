return {
    -- Lush is required by cosec-twilight
    { "rktjmp/lush.nvim" },

    {
        "CosecSecCot/cosec-twilight.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        priority = 1000,
    }
}
