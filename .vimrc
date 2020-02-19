set nocompatible
filetype off
"filetype plugin on
set omnifunc=syntaxcomplete#Complete

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:ycm_extra_conf_globlist = ['~/dev/gecko/*']

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ap/vim-css-color'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'moll/vim-node'
Plugin 'xuyuanp/nerdtree-git-plugin'

call vundle#end()

filetype plugin indent on
let g:solarized_termcolors=256
syntax on
set background=dark
colorscheme hybrid
set ts=2 sw=2 et
let g:ident_guides_start_level = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=ivory1 ctermbg=238

" Nerd Tree configuration
" Allow nerd tree when selecting a folder
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" enable line numbers
let NERDTreeShowLineNumbers=1
" use space for opening files or folders
let NERDTreeMapActivateNode='<space>'
" show hidden files
let NERDTreeShowHidden=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
"let NERDTreeIgnore=['\~$', 'node_modules']


let g:ycm_goto_buffer_command = 'new-tab'



set path+=$PWD/node_modules




map <C-,> :YcmCompleter GoToImprecise<CR>
let mapleader =" "
set number
set relativenumber
set backspace=indent,eol,start

if &term =~ '256color'
  set t_ut=
endif
