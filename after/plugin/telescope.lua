local builtin = require('telescope.builtin')

-- Fuzzy finder and buffers
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- LSP references and definitions
vim.keymap.set('n', '<leader>r', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>d', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>td', builtin.lsp_type_definitions, {})

-- Back to original file
vim.keymap.set('n', '<leader><leader>', "<C-^>", {})

-- Treesitter info
vim.keymap.set('n', '<leader>ts', builtin.treesitter, {})

-- List of all telescope commands
vim.keymap.set('n', '<leader>bb', builtin.builtin, {})

-- View commands: help
vim.keymap.set('n', '<leader>h', builtin.commands, {})

-- View key maps
vim.keymap.set('n', '<leader>km', builtin.keymaps, {})

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
