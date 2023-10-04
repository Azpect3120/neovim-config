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
  use{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('akinsho/toggleterm.nvim')
  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
          })
      end
    })
  use({
      'Wansmer/treesj',
      requires = { 'nvim-treesitter/nvim-treesitter' },
      config = function()
        require('treesj').setup({
          use_default_keymaps = true,
          check_syntax_error = true,
          cursor_behavior = "hold",
          notify = true,
          dot_repeat = true,
          on_error = nil,
          langs = { }
        })
      end,
    })
  use('f-person/git-blame.nvim')
  use({
      'folke/trouble.nvim',
      requires = { "nvim-tree/nvim-web-devicons" },
    })
  use('mattn/emmet-vim')

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
  use('sheerun/vim-polyglot')
  use('windwp/nvim-ts-autotag')
  use('windwp/nvim-autopairs')


  -- LSP Plugins
  use('neovim/nvim-lspconfig')
  use('williamboman/nvim-lsp-installer')

  -- Snippets
  use('hrsh7th/vim-vsnip')
end)
