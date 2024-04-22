-- Move lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Maintain cursor position when collapsing lines with J
vim.keymap.set('n', 'J', 'mzJ`z')

-- Center screen when moving half screens up or down
vim.keymap.set('n', '<C-k>', '<C-d>zz')
vim.keymap.set('n', '<C-j>', '<C-u>zz')

-- Center the screen while searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Apply file changes
vim.keymap.set('n', '<leader><leader>', function()
  vim.cmd 'so'
end)

-- Paste without replacing the clipboard
vim.keymap.set('x', '<leader>p', [["_dP]])

-- Copy to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Delete line without replacing the clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Replace All
vim.keymap.set('n', '<leader>ra', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace [A]ll' })

-- Unmap Q
vim.keymap.set('n', 'Q', '<nop>')
