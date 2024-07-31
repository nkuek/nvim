return {
  {
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      -- OR 'ibhagwan/fzf-lua',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.keymap.set('n', '<leader>orc', ':Octo review comments<CR>', { desc = '[O]cto [r]eview [c]omments' })
      vim.keymap.set('n', '<leader>op', ':Octo pr list<CR>', { desc = '[O]cto [p]r list' })
      vim.keymap.set('n', '<leader>orS', ':Octo review submit<CR>', { desc = '[O]cto [r]eview [S]ubmit' })
      require('octo').setup {
        suppress_missing_scope = { projects_v2 = true },
        default_merge_method = 'squash',
        mappings = {
          pull_request = {
            next_comment = { lhs = ']n', desc = 'go to next comment' },
            prev_comment = { lhs = '[n', desc = 'go to previous comment' },
            add_comment = { lhs = '<leader>oca', desc = 'add comment' },
            delete_comment = { lhs = '<leader>ocd', desc = 'delete comment' },
          },
          review_thread = {
            next_comment = { lhs = ']n', desc = 'go to next comment' },
            prev_comment = { lhs = '[n', desc = 'go to previous comment' },
            add_comment = { lhs = '<leader>oca', desc = 'add comment' },
            delete_comment = { lhs = '<leader>ocd', desc = 'delete comment' },
          },
        },
      }
    end,
  },
}
