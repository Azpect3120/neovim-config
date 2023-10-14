-- Get current branch
local function get_current_branch()
	return vim.fn.system('git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d \'\\n\'')
end
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
vim.keymap.set('n', '<leader>gp', ':G push origin ' .. get_current_branch() .. '<CR>')

-- git pull origin ... 
vim.keymap.set('n', '<leader>gl', ':G pull origin ' .. get_current_branch() .. '<CR>')

-- git blame
vim.keymap.set('n', '<leader>gb', ':G blame<CR>')

-- git checkout
vim.keymap.set('n', '<leader>gco', ':G checkout ')
