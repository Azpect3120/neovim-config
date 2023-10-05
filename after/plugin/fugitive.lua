-- git status
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- git diffsplit! (view merge conflicts)
vim.keymap.set('n', '<leader>gd', ':Gvdiffsplit!<CR>')

-- select left diff
vim.keymap.set('n', '<leader>dgh', ':diffget //2 <CR>')

-- select right diff
vim.keymap.set('n', '<leader>dgl', ':diffget //3 <CR>')

-- git commit
vim.keymap.set('n', '<leader>gc', ':G commit<CR>')

-- git push origin ...
vim.keymap.set('n', '<leader>gps', ':G push origin')

-- git pull origin ... 
vim.keymap.set('n', '<leader>gpl', ':G pull origin')
