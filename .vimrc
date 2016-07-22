
" map comma to leader
let mapleader = ","

" THIS IS ALL FROM NEOBUNDLE INSTALL PAGE: https://github.com/Shougo/neobundle.vim
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" %%%%%%%% YOUR PLUGINS START HERE %%%%%%%%

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'bling/vim-airline' " coloured bar at bottom showing mode, file, line, etc
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'bitc/vim-bad-whitespace'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-endwise' " add end tags to ruby def's and stuff
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'Yggdroot/indentLine'
" Language
NeoBundle 'tpope/vim-rails'
NeoBundle 'haml.zip'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'yaymukund/vim-rabl'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle "pangloss/vim-javascript"
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'tpope/vim-git'

" %%%%%%%% YOUR PLUGINS END HERE %%%%%%%%

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"END OF STUFF FROM NEOBUNDLE INSTALL PAGE: https://github.com/Shougo/neobundle.vim



" MY OWN STUFF

set number " show line numbers
syntax on
colorscheme railscasts

map <Leader>n :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Searching --------------------------------------------------------------------
set hlsearch                                " Highlight searches
set incsearch                               " Highlight search results instantly
set ignorecase                              " Ignore case
set smartcase                               " Override 'ignorecase' option if the search contains upper case characters.

" Indentation ------------------------------------------------------------------
set shiftwidth=2                            " Number of spaces to use in each autoindent step
set tabstop=2                               " Two tab spaces
set softtabstop=2                           " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                               " Spaces instead of tabs for better cross-editor compatibility
set autoindent                              " Keep the indent when creating a new line
set smarttab                                " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                                 " Recommended seting for automatic C-style indentation
set autoindent                              " Automatic indentation in non-C files

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

let g:tcommentMapLeaderOp1 = '<Leader>c'

" Misc -------------------------------------------------------------------------
set nowrap                         " I don't always wrap lines...
set linebreak                      " ...but when I do, I wrap whole words.
set t_Co=256                       " Support for xterm with 256 colors (gets overriden in .gvimrc)
set number                         " Show line numbers
set ruler                          " Show ruler
set listchars=trail:.,tab:>-,eol:¬ " Change the invisible characters
set noswapfile                     " Don't create annoying *.swp files
set scrolloff=5                    " Start scrolling the file 5 lines before the end of the window
set spelllang=en_au                " Set default spelling language to English (Australia)
" set hidden                         " Allow hiding buffers with unsaved changes
set wildmenu                       " Make tab completion act more like bash
set wildmode=list:longest          " Tab complete to longest common string, like bash
set showcmd                        " Display an incomplete command in the lower right corner
set laststatus=2                   " Always show the status line
set ignorecase                     " searches are case insensitive...
set smartcase                      " ... unless they contain at least one capital letter
set backspace=2                    " because backspace should work properly
set noshowmode                     " because we use powerline

" map jj to escape
imap jj <Esc>

" map space to colon
noremap <space> :

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Vim
let g:indentLine_color_term = 239

