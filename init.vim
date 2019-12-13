call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden

set number
set relativenumber
set mouse=a
set inccommand=split

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader="\<space>"
map <C-o> :NERDTreeToggle<CR>
