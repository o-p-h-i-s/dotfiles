"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

let s:base_dir  = '$HOME/.config/nvim/toml'
let s:toml      = s:base_dir . '/dein.toml'
let s:toml_lazy = s:base_dir . '/dein_lazy.toml'

call dein#load_toml(s:toml,      {'lazy': 0})
call dein#load_toml(s:toml_lazy, {'lazy': 1})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" sets
" visual
set number
set showcmd
set wildmode=full
set wildoptions=pum

" search
set ignorecase
set smartcase
set wrapscan
set incsearch
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" tab
set autoindent
set expandtab
set tabstop=3
set shiftwidth=3
autocmd Filetype rust set expandtab tabstop=3 shiftwidth=3

" buf
set splitright

" file
set nowritebackup
set nobackup

" keybinds
nnoremap  :source ~/.config/nvim/init.vim<CR>
nnoremap j gj
nnoremap k gk
inoremap <silent> jj <Esc>

" clipboard
if system('uname -a | grep microsoft') != ''
  augroup myYank
    autocmd!
    autocmd TextYankPost * :call system('clip.exe', @")
  augroup END
endif"
