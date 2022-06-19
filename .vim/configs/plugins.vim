call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'vim-scripts/vim-gitgutter'
Plug 'itchyny/lightline.vim'
" Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'lunarvim/colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'dkarter/bullets.vim'  " Automatically add bullets/numbering when adding a new line after a bullet list
Plug 'junegunn/fzf.vim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
Plug 'vimwiki/vimwiki'
call plug#end()

""" OPTIONS

let g:gitgutter_map_keys = 0				" disable GitGutter mappings to avoid conflicts with navigation key bindings
let g:lightline = {'colorscheme': 'wombat'}

let g:bullets_pad_right = 0  " 
let g:bullets_outline_levels = ['num', 'abc', 'std-']
" let g:bullets_set_mappings = 0
let g:bullets_checkbox_partials_toggle = 0

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.note'}]

