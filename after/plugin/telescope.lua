local builtin = require('telescope.builtin')

-- Fuzzy finder and buffers
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Display command history
vim.keymap.set('n', '<leader>ch', builtin.command_history, {})

-- Change color scheme
vim.keymap.set('n', '<leader>clr', builtin.colorscheme, {})

require('telescope').setup{
	defaults = {
		file_ignore_patterns = { "node_modules" }
	},
	extensions = {}
}
