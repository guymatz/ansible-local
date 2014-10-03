execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"Open NERDTree on startup
"autocmd VimEnter * NERDTree

"When primary window and nerdtree is open, quit"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Control-q toggles NERDTree"
nnoremap <C-q> :NERDTreeToggle<CR>

"Turns on highlighting for line, I used to have this setup for column as well so they were combined in one mapping"
nnoremap <Leader>c :set cursorline!<CR>

syntax on
set nocompatible
set background=light
"colorscheme solarized
"set guifont=Menlo\ Regular:h17
set number
set ts=8
set sw=4
set expandtab
set sts=4
set shell=/bin/bash
set cursorline

filetype off
filetype indent on
filetype plugin on

hi CursorLine cterm=NONE ctermbg=yellow ctermfg=black guibg=#cb4b16 guifg=white

call pathogen#infect()
call pathogen#helptags()
