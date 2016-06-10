execute pathogen#infect()
syntax enable
colorscheme corporation

filetype plugin on

set guioptions-=l 
set guioptions-=L 
set guioptions-=r 
set guioptions-=R 
set guioptions-=T

set number
set autoindent
set expandtab
set hlsearch
set ignorecase
set nowrap
set laststatus=2
set guifont=Consolas:h14:cANSI
"statusline setup
set statusline+=%{fugitive#statusline()}

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>
inoremap jj <ESC>

" set tabsize to 2 whitespaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list
