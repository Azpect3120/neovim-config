require('transparent').setup()

vim.cmd([[:TransparentEnable]])
vim.keymap.set('n', '<leader>bg', ':TransparentToggle<CR>')
