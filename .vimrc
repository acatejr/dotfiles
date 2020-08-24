set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
call vundle#end()

filetype plugin indent on
set nowrap
set formatoptions-=t " Do not auto wrap text when typing

let mapleader=","
noremap <leader>s :update<CR>
inoremap <leader>s <C-s>:w<CR>
map <C-s> <ESC>:w<CR>
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>

set noswapfile
set belloff=all

"" General
set number	" Show line numbers
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set autoread
set expandtab	" Use spaces instead of tabs
set shiftwidth=3	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

colorscheme ron

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
map <F3> :NERDTreeToggle<CR>

au! BufNewFile,BufRead *.svelte set ft=html

