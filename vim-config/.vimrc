"基础配置
"""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set termencoding=utf-8
set encoding=utf-8

set number "绝对行号
set relativenumber "相对行号
set smartindent "智能缩进
set autoindent "当前行的缩进复制到新行
set shiftwidth=4 "缩进的列数
set tabstop=4 "<Tab>输出几个空格
set expandtab "空格代替<Tab>
set scrolloff=3 "光标距离屏幕顶部和底部3行
set showmatch "自动匹配括号
set clipboard=unnamed " 系统剪切板=无名寄存器
set cursorline " 设置高亮光标所在行
highlight CursorLine   cterm=NONE ctermbg=lightgray ctermfg=black guibg=red guifg=white

"插件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim', { 'as': 'dracula' }

" 文件管理
Plug 'scrooloose/nerdtree'
" 标签共享nerdtree
Plug 'jistr/vim-nerdtree-tabs'
" 在nerdtree中显示git信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" 快速注释
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'Chiel92/vim-autoformat'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

filetype plugin indent on

# 快捷操作
"""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap ( ()<ESC>i
inoremap () ()<ESC>a

inoremap [ []<ESC>i
inoremap [] []<ESC>a

inoremap {<SPACE> {<SPACE><SPACE>};<ESC><LEFT><LEFT>i
inoremap {; {<ESC>jA;<ESC>kA
inoremap { {}<ESC>i<CR><CR><ESC>kA<TAB><RIGHT><RIGHT>
inoremap {} {}<ESC>a

inoremap < <><ESC>i
inoremap <<SPACE> <<ESC><RIGHT>r<SPACE>a
inoremap << <<<ESC><RIGHT>r<SPACE>a<BACKSPACE>
inoremap <= <=<ESC>a
inoremap <> <><ESC>a

inoremap "" ""<ESC>i
inoremap '' ''<ESC>i


