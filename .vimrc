set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" colorschemes
Plugin 'trapd00r/neverland-vim-theme'
Plugin 'shawncplus/skittles_berry'
Plugin 'christophermca/meta5'
Plugin 'tpope/vim-vividchalk'
" navigation
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
" validation
Plugin 'scrooloose/syntastic'
" autocomplete
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
" Syntax highlight
" Front-end
Plugin 'evidens/vim-twig'
Plugin 'lilydjwg/colorizer'

call vundle#end()
filetype plugin indent on

" Vim settings
" colors
set t_Co=256
syntax on
colorscheme skittles_berry
" files
set encoding=utf8
set noswapfile
set hidden
" UI
set number
set showcmd
set cursorline
" text
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set smartindent
" search
set incsearch
" Navigation
" navigation between windows using alt + arrow
nmap <silent><A-up> :wincmd k<CR>
nmap <silent><A-down> :wincmd j<CR>
nmap <silent><A-left> :wincmd h<CR>
nmap <silent><A-right> :wincmd l<CR>
" navigation between buffers
nnoremap <C-right> :bnext<CR>
nnoremap <C-left> :bprev<CR>
" Bindings
map <F2> :w <CR>
set pastetoggle=<F1>

" Plugins settings
" Navigation
" NerdTree
autocmd vimenter * NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeHighlightCursorline = 1
" Vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" Supertab
let g:SuperTabDefaultCompletionType = "context"
" Validation
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
