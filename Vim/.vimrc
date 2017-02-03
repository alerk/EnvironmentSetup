nnoremap <F2> :vsplit<CR>

nnoremap <F3> :TlistToggle<CR>

nnoremap <F4> :NERDTree<CR>

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

set tw=80
set colorcolumn=80

set virtualedit=block

syntax enable

execute pathogen#infect()

colo molokai
syntax on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""syntastic plugin"""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0 

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
filetype on