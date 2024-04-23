return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', ':G<CR>', { noremap = true, desc = '[G]it [s]tatus' })
    vim.keymap.set('n', '<leader>gl', ':G log<CR>', { noremap = true, desc = '[G]it [l]og' })
    vim.keymap.set('n', '<leader>gd', ':G diff<CR>', { noremap = true, desc = '[G]it [d]iff' })
    vim.keymap.set('n', '<leader>gc', ':G commit<CR>', { noremap = true, desc = '[G]it [c]ommit' })
    vim.keymap.set('n', '<leader>gP', ':G push<CR>', { noremap = true, desc = '[G]it [P]ush' })
    vim.keymap.set('n', '<leader>gp', function()
      vim.cmd.Git { 'pull', '--rebase' }
    end, { noremap = true, desc = '[G]it [p]ull' })
    vim.keymap.set('n', '<leader>gC', ':G ac ', { noremap = true, desc = '[G]it [A]dd and [C]ommit' })
  end,
}
