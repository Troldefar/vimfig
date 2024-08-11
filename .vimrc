call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'tpope/vim-fugitive'

Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

let g:lsp_settings = {
\ 'typescript': {
\   'command': 'typescript-language-server',
\   'args': ['--stdio'],
\ },
\ 'php': {
\   'command': 'php-language-server',
\   'args': ['--tcp', '--host', '127.0.0.1', '--port', '8080'],
\ },
\ 'c++': {
\   'command': 'clangd',
\   'args': ['--background-index'],
\ },
\ }


let mapleader = "\<Space>"

set showcmd
set nu
set completeopt=menu,menuone,noselect
setlocal omnifunc=lsp#complete

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :Rg<CR>
set guifont=FiraCode\ Nerd\ Font:h12
set termguicolors
colorscheme catppuccin_macchiato
