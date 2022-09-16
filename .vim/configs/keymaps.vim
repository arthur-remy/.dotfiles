let mapleader = " "

""" EDITING

inoremap jj <Esc>  " faster switch to normal mode

" Ctrl+Backspace deletes the previous word in insert mode
" Some terminal emulator send Ctrl+H when pressing Ctrl+Backspace
inoremap <C-BS> <C-W>
inoremap <C-h> <C-W>

" Clipboard integration
map <leader>y "+y  " yank form clipboard
map <leader>p "+p  " paste form clipboard

" jump to the next place holder, delete it and start insert mode
noremap <silent> <C-Space> /<++><CR>:noh<CR>"_c4l
inoremap <silent> <C-Space> <Esc>/<++><CR>:noh<CR>"_c4l

" Moving lines
nnoremap <silent> <A-j> :move .+1<CR>==
nnoremap <silent> <A-k> :move .-2<CR>==
vnoremap <silent> <A-j> :move '>+1<CR>==gv
vnoremap <silent> <A-k> :move '<-2<CR>==gv

" Repeat indentation more easily while in visual mode
vnoremap < <gv
vnoremap > >gv

" Insert current date (ISO format)
inoremap <C-D> <C-R>=strftime('%Y-%m-%d')<CR>

" Indent markdown list with tab // Only works with bullets.vim plugin
inoremap <Tab> <C-O>:call TabIndent(1)<CR>
inoremap <S-Tab> <C-O>:call TabIndent(-1)<CR>


""" NAVIGATION

nmap <silent> <C-F> :Lexplore 30<CR>  " open file explorer
map <silent> <leader><Tab> :bn<CR>  " go to next buffer
map <silent> <leader>c :bd<CR>  " close buffer

" Tab navigation
nmap <silent> <C-t> :tabnew<CR>
nmap <silent> <C-h> :tabprevious<CR>
nmap <silent> <C-l> :tabnext<CR>

" Split navigation
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>j <C-w>j
map <leader>k <C-w>k

" Open fuzzy finder
" Files in the current directory (recursive)
map <silent> <leader>f :FZF<CR>
" Open buffers
map <silent> <leader>b :Buffers<CR>
" Search in open buffers
"
" Search in current files
"
" File open recently
map <silent> <leader>$ :History<CR>


""" FILE MANAGEMENT

nmap <leader>w :w!<CR>  " write file
nmap <leader>q :q!<CR>  " quite file
nnoremap <leader>r :!%:p<CR>  " execute current file
nmap <silent> <leader>n :set relativenumber!<CR>  " toggle relative line numbering


""" VIEW MANAGEMENT

" Resize splits
map <silent> <C-Up> :resize +2<CR>
map <silent> <C-Down> :resize -2<CR>
map <silent> <C-Left> :vertical resize -2<CR>
map <silent> <C-Right> :vertical resize +2<CR>

map <silent> <leader><Esc> :noh<CR>  " remove search highlighting
nnoremap <silent> <leader>* :set list!<CR>  " toggle hidden characters
noremap <silent> <leader>s :set spell!<CR>

