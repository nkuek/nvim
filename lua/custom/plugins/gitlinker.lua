return {
  {
    'linrongbin16/gitlinker.nvim',
    config = function()
      -- browse
      vim.keymap.set({ 'n', 'v' }, '<leader>gl', require('gitlinker').link, { silent = true, noremap = true, desc = 'Copy GitHub link to clipboard' })
      vim.keymap.set({ 'n', 'v' }, '<leader>gL', function()
        require('gitlinker').link { action = require('gitlinker.actions').system }
      end, { silent = true, noremap = true, desc = 'Open browser to selected line(s) in GitHub' })
      require('gitlinker').setup()
    end,
  },
}
