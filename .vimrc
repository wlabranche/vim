set nocompatible " Vim not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
let mapleader=","
let maplocalleader="\\"
" should there be a special thing for plugins? {{{
execute pathogen#infect()
let g:jsx_ext_required = 0      " jsx settings
filetype plugin indent on       " plugins by filetype
" }}}

" easy .vimrc editing {{{
nnoremap <leader>vev :vsplit $MYVIMRC<cr>
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}
" display colors and such {{{
syntax on                       " syntax highlighting
set background=dark             " color settings
colorscheme solarized           " sets theme
" }}}

" commands
" in next email
onoremap in@ :<c-u>execute "normal! /\\S\\+@\\S\\+\\.\\S\\+\r:nohlsearch\rvE"<cr>
" basic commands {{{
inoremap jk <esc>
vnoremap jk <esc>
nnoremap <leader><space> :nohlsearch<cr>
nnoremap zz :q!<cr>
" }}}
" change case {{{
inoremap <leader>U <esc>hevbUea
inoremap <leader>u <esc>hevbuea
nnoremap <leader>U hevbUel
nnoremap <leader>u hevbuel
" }}}
" quotes {{{
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
inoremap <leader>' <esc>viw<esc>a'<esc>bi'<esc>lela
inoremap <leader>" <esc>viw<esc>a"<esc>bi"<esc>lela
" }}}

" display/behavior
" indicator/general info {{{
set ruler                       " ruler on bottom right
set cursorline                  " cursor location clear
set number                      " show line numbers
set relativenumber              " show relative line
set report=0                    " states current state/command in progress
set showmode                    " show current mode in commandline
set showcmd                     " show already typed keys when more are expected
set showmatch                   " show bracket match
set display=lastline            " show as much as possible of last line
set wildmenu                    " graphical autocomplete
set path+=**                    " allow recursive search
set wrapscan                    " wrap on search
set hlsearch                    " highlight on search, not sure why this isn't default
set incsearch                   " incrmental search 
nohlsearch " this seems dumb... but it works
" }}}
" tabbing {{{
set autoindent                  " indent based on previous line
set expandtab                   " tab as spaces
set shiftwidth=2                " indents 2 spaces
set tabstop=2                   " not sure what this does
set softtabstop=2               " tab indents 2 spaces
set smarttab
" }}}
" redraw/misc {{{
set ttyfast                     " fast redraw
set lazyredraw                  " only redraw when necessary
set backspace=eol,start,indent  " make backspace behavior more predictable
set backupcopy=yes              " for webpack
" }}}

" FileType specific
" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" javascript file settings {{{
augroup filetype_javascript
  autocmd FileType javascript nnoremap <buffer> <localleader>c I//<space><esc>
  autocmd FileType javascript nnoremap <buffer> <localleader>xc ^3x
  autocmd FileType javascript inoremap <buffer> rn return
  autocmd FileType javascript inoremap <buffer> fn function
  " experimental, append semicolon on ;enter
  autocmd FileType javascript inoremap ;<cr> <esc>A;<esc>o
augroup END
" }}}

