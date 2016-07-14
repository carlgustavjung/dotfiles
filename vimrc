set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'pangloss/vim-javascript'

" File browsing with NERDTree
Plugin 'scrooloose/nerdtree'

" Code utilities - completion, syntax
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'valloric/youcompleteme'
Plugin 'lervag/vimtex'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'mrk21/yaml-vim'

" Markdown utilities
Plugin 'tpope/vim-markdown' 
Plugin 'suan/vim-instant-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set number
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Syntastic {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
let g:syntastic_javascript_checkers      = ['eslint']
" }}}

autocmd BufNewFile,BufRead *.es6   set syntax=javascript
autocmd BufNewFile,BufRead *.ts   set syntax=javascript
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType php set keywordprg=pman
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:Ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlPBuffer'

syntax enable
colorscheme monokai
