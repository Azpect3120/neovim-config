local trouble = require('trouble')

--vim.keymap.set('n', '<leader>tt', ':TroubleToggle<CR>') 
vim.keymap.set('n', '<leader>tt', function () trouble.toggle() end) 
vim.keymap.set('n', '<leader>tr', function () trouble.refresh() end)
