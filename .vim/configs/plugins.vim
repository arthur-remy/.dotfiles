call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'joshdick/onedark.vim'
Plug 'dkarter/bullets.vim'  " Automatically add bullets/numbering when adding a new line after a bullet list
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
" Plug 'dense-analysis/ale'
call plug#end()

""" OPTIONS

augroup gitGutterDotfiles
	autocmd!
	autocmd BufRead $HOME/.** let g:gitgutter_git_args='--git-dir=$HOME/.dotfiles --work-tree=$HOME'
augroup end

let g:gitgutter_map_keys = 0				" disable GitGutter mappings to avoid conflicts with navigation key bindings
let g:lightline = {'colorscheme': 'wombat'}

let g:bullets_pad_right = 0  " 
let g:bullets_outline_levels = ['num', 'abc', 'std-']
" let g:bullets_set_mappings = 0
let g:bullets_checkbox_partials_toggle = 0

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.note'}]

