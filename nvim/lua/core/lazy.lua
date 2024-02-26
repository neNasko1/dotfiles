return require('lazy').setup({
	-- telescope
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',

	-- git
    'airblade/vim-gitgutter',
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

	-- lsp
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
    'VonHeikemen/lsp-zero.nvim',
    'neovim/nvim-lspconfig',
    'prabirshrestha/vim-lsp',

	-- scheme
    'jacoborus/tender.vim',
    { 'pineapplegiant/spaceduck', branch = 'main' },

	-- qol
	"gbprod/cutlass.nvim",
})
