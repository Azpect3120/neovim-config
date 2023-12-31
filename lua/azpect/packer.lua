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
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Color schemes
  use({'rose-pine/neovim', as = 'rose-pine'})
  use({'catppuccin/nvim', as = 'catppuccin'})
  use('NLKNguyen/papercolor-theme')
  use('Mofiqul/dracula.nvim')
  use('joshdick/onedark.vim')
  use('romainl/Apprentice')
  use('rebelot/kanagawa.nvim')
  use('projekt0n/github-nvim-theme')
  use('Gavinok/SpaceWay.vim')
  use('brettbar/siena.vim')
  use('nanotech/jellybeans.vim')
  use('matthewtodd/vim-twilight')

  -- Select color scheme
  local function selectColor(color)
    vim.cmd('colorscheme ' .. color)
  end

  selectColor('rose-pine-moon')

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
  use('folke/trouble.nvim')
  use('mattn/emmet-vim')
  use('terrortylor/nvim-comment')
  use('kristijanhusak/vim-dadbod-ui')
  use('tpope/vim-dadbod')
  use('williamboman/mason.nvim')
  use('xiyaowong/transparent.nvim')
  use('prettier/vim-prettier')
  use('rush-rs/tree-sitter-asm')
  use('ThePrimeagen/vim-be-good')
  use('mechatroner/rainbow_csv')
  use('nvim-tree/nvim-web-devicons')
  use('rcarriga/nvim-notify')
  use {
    'folke/noice.nvim',
    config = function()
      require('noice').setup()
    end
  }

  -- AI Integration
  use({
      "jackMort/ChatGPT.nvim",
      requires = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
      }
    })

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

  -- .templ syntax highlighting
  use('joerdav/templ.vim')

  -- Snippets
  use('hrsh7th/vim-vsnip')
end)
