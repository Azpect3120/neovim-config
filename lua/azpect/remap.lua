vim.g.mapleader = ' '

-- Preview file tree
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)


-- Toggle line numbers
function ToggleLineNumbers ()
	if vim.wo.relativenumber then
		vim.wo.number = false
		vim.wo.relativenumber = false
	else
		vim.wo.number = true
		vim.wo.relativenumber = true
	end
end
vim.keymap.set('n', '<leader>num', ToggleLineNumbers, {})

-- Keep cursor in the middle when using half page jumps
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Allow yank to yank into the system clipboard
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')

-- Stop process in the terminal
vim.keymap.set('n', '<C-c>', '<C-\\><C-n>:exec("tunmenu\\n")<CR><C-c>')

-- Remap caps lock
vim.keymap.set('n', '<CapsLock>', '<Esc>')
vim.keymap.set('v', '<CapsLock>', '<Esc>')
vim.keymap.set('c', '<CapsLock>', '<Esc>')
vim.keymap.set('x', '<CapsLock>', '<Esc>')
vim.keymap.set('s', '<CapsLock>', '<Esc>')
vim.keymap.set('o', '<CapsLock>', '<Esc>')

-- Window selection
vim.keymap.set('n', '<A-h>', '<C-W>h')
vim.keymap.set('n', '<A-j>', '<C-W>j')
vim.keymap.set('n', '<A-k>', '<C-W>k')
vim.keymap.set('n', '<A-l>', '<C-W>l')

-- Toggle spell check
local spellCheckEnabled = true
local function ToggleSpellCheck ()
	if spellCheckEnabled then
		vim.opt.spell = false
		spellCheckEnabled = false
		vim.cmd('echo "Spell check disabled"')
	else
		vim.opt.spell = true
		spellCheckEnabled = true
		vim.cmd('echo "Spell check enabled"')
	end
end
vim.keymap.set('n', '<leader>sc', ToggleSpellCheck, {})
