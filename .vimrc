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

set noswapfile
set belloff=all

"" General
set autoindent	                " Auto-indent new lines
set autoread
set backspace=indent,eol,start	" Backspace behaviour
set expandtab	                " Use spaces instead of tabs
set formatoptions-=t " Do not auto wrap text when typing
set hlsearch	                " Highlight all search results
set ignorecase	                " Always case-insensitive
set incsearch	                " Searches for strings incrementally
set nowrap
set number	                " Show line numbers
set ruler	                " Show row and column ruler information
set shiftwidth=3	        " Number of auto-indent spaces
set showbreak=+++               " Wrap-broken line prefix
set showmatch	                " Highlight matching brace
set smartcase	                " Enable smart-case search
set smartindent	                " Enable smart-indent
set smarttab	                " Enable smart-tabs
set softtabstop=4	        " Number of spaces per Tab
set textwidth=100	        " Line wrap (number of cols)
set undolevels=1000	        " Number of undo levels
set visualbell	                " Use visual bell (no beeping)
 
syntax on
colorscheme ron

let mapleader=","
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
map <F3> :NERDTreeToggle<CR>
noremap <leader>s :update<CR>
inoremap <leader>s <C-s>:w<CR>
map <C-s> <ESC>:w<CR>
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>
au! BufNewFile,BufRead *.svelte set ft=html

