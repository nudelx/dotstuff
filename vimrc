"version 6.0

au BufNewFile,BufRead *.json set filetype=json

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
"Bundle 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'mhartington/oceanic-next'
Plugin 'othree/yajs.vim'
Plugin 'jiangmiao/simple-javascript-indenter'
Plugin 'JSON.vim'
Plugin 'cciocov/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Bundle 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vbundles/ctrlp'
call vundle#end()

set nocompatible
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=2
set fileencodings=ucs-bom,utf-8,default,latin1
set modelines=0
set window=0
syntax enable
set mouse=a
set linebreak
set showbreak=>\ 

set smartindent
set scrolloff=5 
set showmode " show the mode line 
set wildmenu " show choose line i
"set cursorline  "show the crrent line
"set undofile " add ability to restore file after reopen 
set ignorecase
set hlsearch ""enable search hilight
set incsearch " enable increment search 
set ruler
set expandtab "use space instead of tab [8]  
set tabstop=2
set shiftwidth=2
set fileencoding=utf-8
set encoding=utf-8

set winheight=999
set winheight=5
set winminheight=5
set winwidth=100


filetype plugin indent on
filetype indent on
autocmd Filetype javascript nnoremap <leader>c I//<esc>
autocmd Filetype perl nnoremap <leader>c I#<esc>
imap <C-Space> <C-n>


set t_Co=256
set number
set background=dark
colorscheme OceanicNext 
map <leader><leader> :NERDTreeToggle<CR>

"autocmd BufRead,BufWritePre *.html normal gg=G
"autocmd Filetype html nnoremap <leader>c I <!--<esc>A--><esc>
let g:jsx_ext_required = 0
source ~/dotfiles/airline.vim

