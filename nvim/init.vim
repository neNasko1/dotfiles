set smartindent autoindent smarttab cindent
set tabstop=4
set shiftwidth=4
set relativenumber
set number
set nowrap
set noswapfile
set langmap=чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM
set clipboard+=unnamedplus

syntax on
if has('mouse')
    set mouse=a
endif

" Make copy pasting consistent with my understanding of how deletion works
nnoremap dd "_dd
vnoremap d "_d
noremap p "_"+P

autocmd BufNewFile *.cpp 0r ~/.config/nvim/skeletons/skeleton.cpp

autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWritePre * :%s/\s\+$//e
highlight TrailingWhitespaces ctermbg=red
match TrailingWhitespaces /\s\s*$/

call plug#begin('~/.vim/plugged')
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	Plug 'ap/vim-css-color'

    Plug 'airblade/vim-gitgutter'

	Plug 'neovim/nvim-lspconfig'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'vlime/vlime', {'rtp': 'vim/'}
	Plug 'nikvdp/ejs-syntax'

	Plug 'jacoborus/tender.vim'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
call plug#end()

" Theme
if (has("termguicolors"))
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax enable
" colorscheme tender
colorscheme spaceduck
" Theme

" Vim-lsp
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>

lua <<EOF
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
end

require'lspconfig'.clangd.setup{on_attach = on_attach}
require'lspconfig'.tsserver.setup{on_attach = on_attach}
vim.o.completeopt = "menuone,noselect"
EOF
" Vim-lsp

" Telescope
let mapleader=' '
nnoremap <leader>p :Telescope git_files<cr>
nnoremap <leader>g :Telescope live_grep<cr>
" Telescope

