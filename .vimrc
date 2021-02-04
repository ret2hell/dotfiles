call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'dylanaraps/wal'
call plug#end()

syntax on
set tabstop=4
set shiftwidth=4
set number relativenumber
set smartindent
set showtabline=2
set nocompatible
set noshowmode 
set wrap
set mouse=a 
set clipboard=unnamed
set hidden
set shell=zsh
set encoding=utf-8
syntax enable
"colorscheme candymouse
colorscheme wal

" bindings
map <F1> :NERDTreeFocus<CR> 
map <F2> :NERDTreeToggle<CR> 
map <F3> :TagbarToggle<CR>
map <F4> :set hlsearch!<CR>
map <F5> :q<CR> 
map <F6> :!make<CR> 
map <F8> :split<CR> 
map <F7> :vsplit<CR> 
map <F9> :tabnew<CR> 
map <F10> :tabprev<CR> 
map <F11> :tabnext<CR> 

inoremap jj <Esc>

"" Airline specific settings
let g:airline_theme = 'ratbyte'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '▒'
let g:airline#extensions#tabline#right_sep = '▒'
let g:airline#extensions#tabline#right_sep_alt = '▒'
let g:airline_left_sep = '▒'
let g:airline_right_sep = '▒'
let g:airline_section_z = airline#section#create(['--%1p%%-- ',
    \ '%#__accent_bold#%l%#__restore__#', ':%c %L'])

