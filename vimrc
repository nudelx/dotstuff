"version 6.0
set nocompatible
filetype indent on
filetype plugin on
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
set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'chriskempson/base16-vim'
Plugin 'VundleVim/Vundle.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'vbundles/ctrlp'
call vundle#end()

"colorscheme base16-default
"let base16colorspace=256 "Access colors present in 256 colorspace
"set t_Co=256 " 256 color mode
"set background=dark
"colorscheme base16-ocean

set linebreak
"set showbreak=>\ 

"   :wqvim: set ft=vim ::s
"alex 
filetype indent on
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
set tabstop=4
set shiftwidth=4
set fileencoding=utf-8
set encoding=utf-8

set winheight=999
set winheight=5
set winminheight=5
set winwidth=84

"autocmd BufRead,BufWritePre *.html normal gg=G
"autocmd Filetype html nnoremap <leader>c I <!--<esc>A--><esc>
autocmd Filetype javascript nnoremap <leader>c I//<esc>
autocmd Filetype perl nnoremap <leader>c I#<esc>
set runtimepath^=~/.vim/bundle/ctrlp.vim
imap <C-Space> <C-n>
map <leader><leader> :NERDTreeToggle<CR>
"set folded line 
"hi Folded ctermbg=242

"source ~/dotfiles/simple_power_line.vim
"source ~/dotfiles/fancy_power_line.vim
source ~/dotfiles/airline.vim
