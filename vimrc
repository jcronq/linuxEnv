set nocompatible
set encoding=utf8


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/vimproc.vim'

Plug 'vim-syntastic/syntastic'
Plug 'Townk/vim-autoclose'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'ervandew/supertab'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'

Plug 'ajh17/Spacegray.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
call plug#end()

""""""""""""""""""""""""""""""""""
" Configuration Section
""""""""""""""""""""""""""""""""""

set undodir=~/.vim/undodir
set undofile

set nowrap
set number

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

au BufNewFile,BufRead *.js, *.html, *.css, *.yaml
    \ set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab
    \ | set autoindent
    \ | set fileformat=unix


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
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

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

let python_highlight_all=1

