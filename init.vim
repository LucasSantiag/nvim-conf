call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/nvim-completion-manager'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'exitface/synthwave.vim'
Plug 'tpope/vim-surround'
call plug#end()

set runtimepath^=~/.config/nvim//bundle/ctrlp.vim

set background=dark
colorscheme gruvbox

if has('termguicolors')
  set termguicolors
else
  let g:synthwave_termcolors=256
endif

set expandtab
set shiftwidth=4
set path+=**
set wildignore+=*.class 

set relativenumber
set hidden
set number
set mouse=a
set inccommand=split
set guifont=:h8

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader="\<space>"
map <C-o> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
