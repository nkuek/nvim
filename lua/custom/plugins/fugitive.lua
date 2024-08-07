local function showFugitiveGit()
  if vim.fn.FugitiveHead() ~= '' then
    vim.cmd [[
    Git
    " wincmd H  " Open Git window in vertical split
    " setlocal winfixwidth
    " vertical resize 31
    " setlocal winfixwidth
    setlocal nonumber
    setlocal norelativenumber
    ]]
  end
end
local function toggleFugitiveGit()
  if vim.fn.buflisted(vim.fn.bufname 'fugitive:///*/.git//$') ~= 0 then
    vim.cmd [[ execute ":bdelete" bufname('fugitive:///*/.git//$') ]]
  else
    showFugitiveGit()
  end
end

return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', toggleFugitiveGit, { noremap = true, desc = '[G]it [s]tatus' })
    vim.keymap.set('n', '<leader>gS', ':G stash<CR>', { noremap = true, desc = '[G]it [S]tash' })
    vim.keymap.set('n', '<leader>gu', ':G stash pop<CR>', { noremap = true, desc = '[G]it [u]nstash' })
    vim.keymap.set('n', '<leader>gl', ':G log<CR>', { noremap = true, desc = '[G]it [l]og' })
    vim.keymap.set('n', '<leader>gd', ':G diff<CR>', { noremap = true, desc = '[G]it [d]iff' })
    vim.keymap.set('n', '<leader>gc', ":G commit -m '", { noremap = true, desc = '[G]it [c]ommit' })
    vim.keymap.set('n', '<leader>gp', ':G push<CR>', { noremap = true, desc = '[G]it [p]ush' })
    vim.keymap.set('n', '<leader>gP', ':G pull --rebase<CR>', { noremap = true, desc = '[G]it [P]ull' })
    vim.keymap.set('n', '<leader>gC', ":G ac '", { noremap = true, desc = '[G]it [A]dd and [C]ommit' })
    vim.keymap.set('n', '<leader>gb', ':G checkout ', { noremap = true, desc = '[G]it Checkout to a [b]ranch' })
    vim.keymap.set('n', '<leader>gB', ':G checkout -b ', { noremap = true, desc = '[G]it Checkout and create [B]ranch' })
    vim.keymap.set('n', '<leader>gm', ':G merge ', { noremap = true, desc = '[G]it [m]erge' })
  end,
}
