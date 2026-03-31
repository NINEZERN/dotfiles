require ("gdev.lazy")
require ("gdev.keymaps")
require ("gdev.set")
require("gdev.lsp_setup")


vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for Netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
    end

    -- Возвращаем нормальную навигацию по окнам
    bind('<C-l>', '<C-w>l')
    bind('<C-h>', '<C-w>h')
    bind('<C-j>', '<C-w>j')
    bind('<C-k>', '<C-w>k')
  end
})
