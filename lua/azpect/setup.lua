-- Relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Line number width
vim.wo.numberwidth = 5

-- Indent size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Cursor
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- Colors
vim.opt.termguicolors = true
vim.opt.colorcolumn = '80'

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

-- Updates
vim.opt.updatetime = 50

-- Spell check
vim.opt.spell = true
vim.opt.spelllang = 'en_us'
vim.cmd([[highlight SpellBad cterm=underline gui=underline]])
vim.cmd([[highlight SpellLocal cterm=none gui=none]])

-- Set EJS files to be handled as html files
vim.cmd('autocmd BufNewFile,BufRead *.ejs setfiletype html')

-- Set up folding
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.keymap.set('n', '<leader><leader>', 'za')
