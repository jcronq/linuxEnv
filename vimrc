set encoding=utf8
filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Shougo/vimproc.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'Townk/vim-autoclose'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

Plugin 'ajh17/Spacegray.vim'
call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""
" Configuration Section
""""""""""""""""""""""""""""""""""

set nowrap
set number

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set laststatus=2

let g:elite_mode=1 "No Arrow Keys <----!!!!!

map <Down> <Nop>
map <Right> <Nop>
map <Left> <Nop>
map <Up> <Nop>

"Style Configuration
syntax on
set t_Co=256
colorscheme spacegray

"Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"Typescript Configuration
let g:tsuquyomi_disable_quickfix = 1 "Allow Syntactic highlighting

"NerdTree Configuration
let NERDTreeShowHidden = 1

map <C-n> :NERDTreeToggle<CR>
map <C-J> <C-W><C-J>
map <C-H> <C-W><C-H>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>

