local lsp_zero = require('lsp-zero')
local lspconfig = require("lspconfig")
local servers = { 'lua_ls', 'rust_analyzer', 'pyright', 'bashls', 'clangd', 'typst_lsp' }

require('mason').setup({})
require('mason-lspconfig').setup({ ensure_installed = servers })

local on_attach = function(client, bufnr)
	local bufopts = { noremap=true, silent=true, buffer=bufnr }
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', 'ff', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
end

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup{on_attach = on_attach}
end
local luasnip = require('luasnip')

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	snipet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		{ name = 'luasnip', keyword_length = 2 },
	},
	formatting = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
	}),
	experimental = {
		ghost_text = true,
	},
})

-- Disable copilot
vim.cmd('Copilot disable')
