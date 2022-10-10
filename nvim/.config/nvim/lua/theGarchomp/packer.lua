return require('packer').startup(function(use)
  --Packer can manage itself
  use 'wbthomason/packer.nvim'
  use("sbdchd/neoformat")
  
  --neogit 
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  --Theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")
  use ({ 'projekt0n/github-nvim-theme' })

  --Nvim native lsp
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
  use("onsails/lspkind-nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("simrat39/symbols-outline.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  -- auto pairs
  use("windwp/nvim-autopairs")
  -- auto tags
  use("windwp/nvim-ts-autotag")


  -- treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- undotree
  use("mbbill/undotree")

  -- autoformat
  use "lukas-reineke/lsp-format.nvim"

  -- Telescope
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Telescope extension
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

 -- status line
 use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }

end)
