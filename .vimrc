call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader = "\<Space>"

set showcmd
set nu

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :Rg<CR>
