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


-- Move around highlighted blocks in visual mode
vim.keymap.set('v', 'J', "m: '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', "m: '<-2<CR>gv=gv")

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
