""" General

set history=500
set autoread " auto update the file when change by another software
set wildmenu
set ruler
set number
set list


""" Shortcuts

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

" sudo write
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


""" Abbreviations

iab --> 🠆


""" Search

set ignorecase
set smartcase
set hlsearch " Highlight search results
set incsearch " Show partial match


""" Theme

highlight LineNr ctermfg=grey
highlight NonText ctermfg=grey
highlight SpecialKey ctermfg=grey
highlight Comment cterm=italic
highlight clear VertSplit

" add markdown syntax highlighting by default for .md and .txt files
autocmd BufNewFile,BufFilePre,BufRead *.md,*.txt set filetype=markdown

" change markdown highlighting
highlight markdownH1 cterm=bold ctermfg=135
highlight markdownH2 cterm=bold ctermfg=141
highlight markdownH3 cterm=bold ctermfg=147
highlight markdownH4 cterm=bold ctermfg=153

highlight markdownH1Delimiter cterm=bold ctermfg=135
highlight markdownH2Delimiter cterm=bold ctermfg=141
highlight markdownH3Delimiter cterm=bold ctermfg=147
highlight markdownH4Delimiter cterm=bold ctermfg=153

""" Performance

set lazyredraw " Don't updatescreen during macro execution 


""" Tabs

set smarttab
set shiftwidth=4
set tabstop=4
set shiftround
set listchars=tab:>\ 


""" Plugins

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes' 
Plug 'guns/xterm-color-table.vim'
call plug#end()

