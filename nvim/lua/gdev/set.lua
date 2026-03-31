-- Colorscheme
vim.cmd("colorscheme cosec-twilight")
-- Basic editor
vim.opt.number = true                  -- show line numbers
vim.opt.relativenumber = true          -- relative line numbers
vim.opt.cursorline = true              -- highlight current line
vim.opt.signcolumn = "yes"             -- show signs (LSP, Git, etc.)
vim.opt.wrap = false                    -- no line wrap
vim.opt.scrolloff = 8                   -- keep cursor away from edges
vim.opt.sidescrolloff = 8

-- Tabs and indentation
vim.opt.expandtab = true                -- use spaces instead of tabs
vim.opt.shiftwidth = 4                  -- shift size for autoindent
vim.opt.tabstop = 4                     -- number of spaces for a tab
vim.opt.smartindent = true              -- auto-indent new lines
vim.opt.autoindent = true               -- copy indent from previous line

-- Searching
vim.opt.ignorecase = true               -- ignore case
vim.opt.smartcase = true                -- unless uppercase letters used
vim.opt.incsearch = true                -- incremental search
vim.opt.hlsearch = true                 -- highlight matches

-- Files
vim.opt.swapfile = false                -- disable swapfile
vim.opt.backup = false                  -- disable backup
vim.opt.undofile = true                 -- persistent undo
vim.opt.undodir = vim.fn.stdpath("data").."/undo"  -- undo file location

-- Appearance
vim.opt.termguicolors = true            -- true colors
vim.opt.background = "dark"             -- dark background
vim.opt.showmode = false                -- we use statusline

-- Clipboard
vim.opt.clipboard = "unnamedplus"       -- system clipboard
-- Splits
vim.opt.splitright = true               -- new vertical splits to the right
vim.opt.splitbelow = true               -- new horizontal splits below

-- Mouse support
vim.opt.mouse = "a"                     -- enable mouse in all modes

-- Command line
vim.opt.cmdheight = 1                    -- 1-line command bar
vim.opt.showcmd = true                   -- show partial command in corner
vim.opt.updatetime = 300                 -- faster completion

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99                  -- open all folds by default

-- Other useful options
vim.opt.completeopt = { "menu", "menuone", "noselect" }  -- for completion plugins
vim.opt.shortmess:append("c")          -- don't show extra messages when using completion

-- Keymaps for convenience (optional)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Hide the banner at the top (the help text)
vim.g.netrw_banner = 1

-- Set the default view to "Tree view" (mode 3)
vim.g.netrw_liststyle = 1

-- Set the width of the Lexplore (sidebar) to 25%
vim.g.netrw_winsize = 25
