call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" common
set number
set tabstop=4
set expandtab

" theme
syntax enable
set background=light
colorscheme solarized

" indentLine

" coc config
let g:coc_global_extensions = ['coc-vimlsp', 'coc-clangd', 'coc-json']

