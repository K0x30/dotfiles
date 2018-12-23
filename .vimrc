
set background=dark

syntax enable
filetype plugin on
filetype indent on

set fileencoding=utf-8
set encoding=utf-8

" -----------------------------------------------------------------------------
" [search]
" 大文字小文字を区別しない
" 大文字小文字が含まれているときは区別
" -----------------------------------------------------------------------------
set ignorecase
set smartcase

set incsearch
set hlsearch

set wrapscan
set showmatch


" -----------------------------------------------------------------------------
" [indent]
" -----------------------------------------------------------------------------
set autoindent
set smartindent
set cindent
set cinoptions+=:0,g0
set smarttab
set expandtab

set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start

set formatoptions+=mM

if has('autocmd')
	autocmd FileType c   setlocal ts=4 sw=4 sts=4 et
	autocmd FileType cpp setlocal ts=4 sw=4 sts=4 et
  autocmd FileType sh  setlocal ts=2 sw=2 sts=2 et
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
