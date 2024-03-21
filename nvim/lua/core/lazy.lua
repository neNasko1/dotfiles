return require('lazy').setup({
	-- colorscheme
	'jacoborus/tender.vim',
	{ 'pineapplegiant/spaceduck', branch = 'main' },

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
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'L3MON4D3/LuaSnip', version = 'v2.*' },
	{ 'hrsh7th/cmp-path' },
	{ 'saadparwaiz1/cmp_luasnip' },

	-- copilot
	{ 'github/copilot.vim' },

	-- lsp
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'VonHeikemen/lsp-zero.nvim',
	'neovim/nvim-lspconfig',
	'prabirshrestha/vim-lsp',

	{ 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" },

	-- racket
	-- { 'wlangstroth/vim-racket' },
	-- { 'Olical/conjure' },
	-- { 'HiPhish/rainbow-delimiters.nvim' },

	-- orgmode
	{ 'nvim-orgmode/orgmode' },
})
