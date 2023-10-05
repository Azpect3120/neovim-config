-- git status
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

vim.keymap.set('n', '<leader>gd', vim.cmd.Gdiff)

-- git commit
vim.keymap.set('n', '<leader>gc', ':G commit<CR>')

-- git push origin ...
vim.keymap.set('n', '<leader>gps', ':G push origin')

-- git pull origin ... 
vim.keymap.set('n', '<leader>gpl', ':G pull origin')
