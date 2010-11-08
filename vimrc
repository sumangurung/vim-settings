filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" VIM extensions are not compatible with VI and have to be set as vim starts as compatible when it finds .vimrc
set nocompatible
syntax on
set tags=./tags


""""""""""""""""""""""""""""""""""""""
" display
"""""""""""""""""""""""""""""""""""""

set encoding=utf-8

" faster macros
set lazyredraw

" display the current mode
set showmode

" min number of lines to keep above/below the cursor
set scrolloff=2


""""""""""""""""""""""""""""""""""""""""
" editing
""""""""""""""""""""""""""""""""""""""""

" backspace for dummies
set backspace=indent,eol,start

" show matching brackets/parenthesis
set showmatch

" enable filetype detection
filetype on

" wrap long lines
set wrap

" indent at the same level of the previous line
set autoindent
set smartindent
set cindent

set tabstop=2
set expandtab

" use indents of 2 spaces
set shiftwidth=2

"always show the status line
set laststatus=2

" Set temporary directory (don't litter local dir with swap files
set directory=/tmp/

" yanks go to clipboard instead.
set clipboard+=unnamed

let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_WinWidth=50
map <f4> :TlistToggle<cr>

map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+ .<CR>


" tab navigation (next tab) with alt left/right
nnoremap <a-right> gt
nnoremap <a-left> gT


" Mouse Settings "{{{
if has('mouse')
  set mouse=a     "Enable mouse usage (all modes) in terminal
  set ttymouse=xterm2    "Make mouse and putty work together
  map <M-Esc>[62~ <MouseDown>
  map! <M-Esc>[62~ <MouseDown>
  map <M-Esc>[63~ <MouseUp>
  map! <M-Esc>[63~ <MouseUp>
  map <M-Esc>[64~ <S-MouseDown>
  map! <M-Esc> [64~ <S-MouseDown>
  map <M-Esc>[65~ <S-MouseUp>
  map! <M-Esc>[65~ <S-MouseUp>
endif
"}}}

:set complete=.,t 



"""""""""""""""""""""""""""""""""""""""""""""
" search
""""""""""""""""""""""""""""""""""""""""""""
"highlight all search matches
set hlsearch

" * Load external config
runtime! statusbar_config.vim

map <C-N> :bnext
map <C-P> :bprevious

filetype plugin indent on

