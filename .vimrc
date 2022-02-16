""" GENERAL

set shell=/bin/bash  " required for GitGutter to work properly
set autoread  " auto update the file when change by another software
set wildmenu  " helper autocomplete popup for command
set ruler  " show cursor position (line & column number) in the status bar
set number  " show line numbers in the left of the window
" set list  " show hidden charactes as defined by the listchars variable
set listchars=eol:↩,tab:→\ ,space:·
set conceallevel=2  " hide special character in md files
set laststatus=2  " always show status line


""" SHORTCUTS

let mapleader = " "

nmap <leader>f :Ex<CR>  " open file explorer
nmap <leader>w :w!<CR>  " write file
nmap <leader>* :set list!<CR>  " toggle hidden characters
map <leader>y "+y  " yank form clipboard
map <leader>p "+p  " paste form clipboard
map <leader><Esc> :noh<CR>  " remove search highlighting
map <leader>s <C-w>s  " open horizontal split
map <leader>v <C-w>v  " open vertical split
map <leader>c <C-w>c  " close window
map <leader><Tab> :bn<CR>  " go to next buffer
nnoremap <leader>r :!%:p<CR>  " execute current file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!  " sudo write

" Navigation between windows
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>j <C-w>j
map <leader>k <C-w>k


""" ABBREVIATIONS

iab -> 🠆


""" SEARCH

set ignorecase  " case insensitive search
set smartcase  " search is case sensitive if a upper case is used
set hlsearch  " Highlight search results
set incsearch  " Show partial match


""" THEME

highlight LineNr ctermfg=grey
highlight NonText ctermfg=grey
highlight SpecialKey ctermfg=grey
highlight Comment cterm=italic
highlight clear VertSplit

" change markdown highlighting
highlight markdownH1 cterm=bold ctermfg=135
highlight markdownH2 cterm=bold ctermfg=141
highlight markdownH3 cterm=bold ctermfg=147
highlight markdownH4 cterm=bold ctermfg=153
highlight markdownH1Delimiter cterm=bold ctermfg=135
highlight markdownH2Delimiter cterm=bold ctermfg=141
highlight markdownH3Delimiter cterm=bold ctermfg=147
highlight markdownH4Delimiter cterm=bold ctermfg=153


" gitgutter plugin theme
set updatetime=100
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
highlight! link SignColumn LineNr

" lightline theme
let g:lightline = {'colorscheme': 'wombat'}

""" PERFORMANCE

set lazyredraw  " Don't updatescreen during macro execution


""" TABS

set tabstop=4  " tab = 4 spaces
set shiftwidth=4  " 1 identation level = 4 spaces
set shiftround  " round shift value when there is already spaces


""" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'vim-scripts/vim-gitgutter'
Plug 'itchyny/lightline.vim'
call plug#end()

