autocmd!
scriptencoding utf-8
if !1 | finish | endif

set number
syntax enable
set fileencodings=utf-8,latin
set encoding=utf-8
set title
set autoindent
" set background=dark
set nobackup
set hlsearch
set shell=bash
set backupskip=/tmp/*,/private/tmp/*
set t_BE=
set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
autocmd InsertLeave * set nopaste
set formatoptions+=r


highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=NONE ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
	autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`: `basename %`]\e\\"' | endif
	autocmd VimLeave * silent! exe '!echo -n "\ek[`hostname`: `basename $PWD`]\e\\"'
endif


source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/onedark.vim
