local builtin = require('telescope.builtin')

-- Fuzzy finder and buffers
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})

-- LSP references and definitions
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>d', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>td', builtin.lsp_type_definitions, {})
vim.keymap.set('n', '<leader>f', builtin.lsp_document_symbols, {})

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
		file_ignore_patterns = {
			"node_modules", ".git"
		}
	},
	extensions = {}
}
