nnoremap <F2> :vsplit<CR>
nnoremap <F3> :TlistToggle<CR>
nnoremap <F4> :NERDTree<CR>
nnoremap <F5> :CCTreeKeyToggleWindow<CR>

map <Tab><Tab> <C-W>w

map <silent> <F4> :NERDTreeToggle<CR>


set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set cino=N-s

set ruler

set nu

set hlsearch

set smartindent

" set tw=80
set colorcolumn=80

set virtualedit=block

syntax enable

execute pathogen#infect()

colo molokai
syntax on
autocmd VimEnter * if filereadable('cscope.out') | CCTreeLoadDB cscope.out | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""syntastic plugin"""
set laststatus=2
set statusline+=%f
set statusline+=\ -\
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0 

" nerd tree
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=0         "show bookmarks on startup
let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
let NERDTreeShowLineNumbers=1
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"""fuzzyfinder"""
set rtp+=~/.fzf

"""ctrlp"""
set runtimepath^=~/.vim/bundle/ctrlp.vim

""" csscope"""
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

set tags=./.tags,.tags;$HOME/Work/

set nocompatible              " be iMproved, required
"filetype off
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'hari-rangarajan/CCTree'
"call vundle#end()            " required
"filetype plugin indent on    " required
filetype on

