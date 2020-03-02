call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/nvim-completion-manager'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'exitface/synthwave.vim'
call plug#end()

set background=dark
color synthwave

if has('termguicolors')
  set termguicolors
else
  let g:synthwave_termcolors=256
endif

set hidden

set number
set mouse=a
set inccommand=split

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader="\<space>"
map <C-o> :NERDTreeToggle<CR>
