vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

  use 'l3mon4d3/luasnip'
  use 'folke/tokyonight.nvim'

  use('windwp/nvim-ts-autotag')

	use({'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"})
	use("nvim-treesitter/playground")
  use("nvim-treesitter/nvim-treesitter-context");

	use('mbbill/undotree')

  use('nvim-lualine/lualine.nvim')
  use "jose-elias-alvarez/null-ls.nvim"
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'l3mon4d3/luasnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {"numToStr/FTerm.nvim"}
  use 'pantharshit00/vim-prisma'

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {}
      end
  })

  use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {}
    end
  }

  use("m4xshen/autoclose.nvim")
end)
