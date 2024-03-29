local plugins = {
	-- colorscheme
	'jacoborus/tender.vim',
	'pineapplegiant/spaceduck',

	-- qol
	"gbprod/cutlass.nvim",

	-- telescope
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',

	-- git
	'airblade/vim-gitgutter',
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- autocomplete
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'L3MON4D3/LuaSnip',
	'hrsh7th/cmp-path',
	'saadparwaiz1/cmp_luasnip',

	-- copilot
	'github/copilot.vim',

	-- lsp
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'VonHeikemen/lsp-zero.nvim',
	'neovim/nvim-lspconfig',
	'prabirshrestha/vim-lsp',

	-- racket
	'wlangstroth/vim-racket',
	'Olical/conjure',
	'HiPhish/rainbow-delimiters.nvim',

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"javascript",
					"html",
					"org"
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	},
}

return require('lazy').setup(plugins)
