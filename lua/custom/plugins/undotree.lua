return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, desc = 'Toggle Undotree' })
  end,
}
