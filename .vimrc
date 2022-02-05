""" GENERAL

set history=500
set autoread " auto update the file when change by another software
set wildmenu
set ruler
set number
set list


""" SHORTCUTS

let mapleader = " "

" Open file explorer
nmap <leader>f :Ex<CR>
nmap <leader>w :w!<CR>

" Toggle show tab character
nmap <leader>l :set list!<CR>

" Yank and paste form clipboard
map <leader>y "+y
map <leader>p "+p

" Remove search highlighting
map <leader><Esc> :noh<CR>
map <leader>s <C-w>s
map <leader>v <C-w>v
map <leader>c <C-w>c
map <leader><Tab> :bn<CR>

" Navigation between windows
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>j <C-w>j
map <leader>k <C-w>k

" Execute current file
nnoremap <leader>r :!%:p<CR>

" sudo write
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


""" ABBREVIATIONS

iab -> 🠆


""" SEARCH

set ignorecase
set smartcase
set hlsearch " Highlight search results
set incsearch " Show partial match


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

" gitgutter plugin
set updatetime=100
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
highlight! link SignColumn LineNr


""" PERFORMANCE

set lazyredraw " Don't updatescreen during macro execution 


""" TABS

set smarttab
set shiftwidth=4
set tabstop=4
set shiftround
set listchars=tab:>\ 


""" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes' 
Plug 'guns/xterm-color-table.vim'
Plug 'vim-scripts/vim-gitgutter'
call plug#end()

