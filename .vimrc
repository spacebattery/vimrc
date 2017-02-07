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
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" Plugins list
" Permanent
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tyru/open-browser.vim'
Plugin 'kannokanno/previm'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'altercation/vim-colors-solarized'

" Trying
Plugin 'dbext.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'posva/vim-vue'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-unimpaired'

" Deprecated
" Plugin 'mxw/vim-jsx'
" Plugin 'jwalton512/vim-blade'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'wavded/vim-stylus'
" Plugin 'pangloss/vim-javascript'
" Plugin 'othree/html5.vim'
" Plugin 'othree/html5-syntax.vim'
" Plugin 'ap/vim-css-color'
" Plugin 'groenewege/vim-less'
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'tpope/vim-markdown'

set clipboard=unnamed


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on


" general
:set dir=~/.vim/tmp
:set backupdir=~/.vim/tmp
:set ignorecase
:set smartcase
:set incsearch
:set hlsearch
:set tabstop=2
:set shiftwidth=2
:set expandtab
autocmd Filetype php setlocal ts=4 sw=4 expandtab
autocmd Filetype blade setlocal ts=2 sw=2 expandtab
" :set number
:set relativenumber " :set rnu

" for tmux
set t_Co=256

" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorscheme solarized

" airline
let g:airline_powerline_fonts = 1
set laststatus=2

" ctrl p
let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*\\node_modules\\*,*\\bower_components\\*  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" vim markdown
let g:vim_markdown_folding_disabled=1

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" jsx
let g:jsx_ext_required=0

" Hyper cli vim airline fix https://github.com/zeit/hyper/issues/1037
set t_RV=
