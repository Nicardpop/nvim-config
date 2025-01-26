-- This file can be loaded by calling `lua require('plugins')` from your init.vim

--builtin.find_files, { desc = 'Telescope find files' }- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Wakatime 
 use 'wakatime/vim-wakatime'
  use({ 'rose-pine/neovim', as = 'rose-pine',config = function()

	  vim.cmd('colorscheme rose-pine')
  end
  })
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use ('theprimeagen/harpoon')
  use('mbbill/undotree')
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use ({ 'saadparwaiz1/cmp_luasnip' })
  use ({ "rafamadriz/friendly-snippets"})
use {
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
}
use({
  "nvim-tree/nvim-tree.lua",
  requires = {
    "nvim-tree/nvim-web-devicons", -- Optional: for file icons
  },
})
use({
  'folke/tokyonight.nvim',
  opts = {}, -- Optional: pass options here if needed
  priority = 1000, -- Ensure it loads with high priority
  lazy = false,    -- Make sure it's loaded immediately
})
use {
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup({})
  end
}
use {
  'akinsho/flutter-tools.nvim',
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require("flutter-tools").setup({})
  end
}

  -- Install dartlang-snippets for Dart snippets
  use {
    'natebosch/dartlang-snippets',
    config = function()
    end
  }
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use({
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()  -- Optional: to load VS Code snippets if needed
  end
})

end)
