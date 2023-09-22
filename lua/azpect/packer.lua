-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Plugins 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color schemes
  use({'rose-pine/neovim', as = 'rose-pine'})
  use({'catppuccin/nvim', as = 'catppuccin'})

  -- Select color scheme
  function selectColor(color)
    vim.cmd('colorscheme ' .. color)
  end

  selectColor('rose-pine')

  -- More plugins
  use('nvim-treesitter/nvim-treesitter')
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('akinsho/toggleterm.nvim')

  -- LSP Completions
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/cmp-nvim-lsp')
  use({
	"L3MON4D3/LuaSnip",
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	run = "make install_jsregexp"
})

  -- LSP Plugins
  use('neovim/nvim-lspconfig')
  use('williamboman/nvim-lsp-installer')

  -- Snippets
  use('hrsh7th/vim-vsnip')
end)
