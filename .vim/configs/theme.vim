let g:onedark_terminal_italics = 1

colorscheme onedark

highlight Normal ctermbg=None guibg=None

" highlight CursorLine cterm=None
" highlight CursorLineNr cterm=None ctermfg=Yellow guifg=Yellow
" highlight LineNr ctermfg=grey guifg=grey
" highlight NonText ctermfg=grey guifg=grey
" highlight SpecialKey ctermfg=grey guifg=grey
highlight Comment cterm=italic gui=italic
" highlight clear VertSplit
" set fillchars+=vert:│  						" solid vertical split line

" " change markdown highlighting
highlight markdownH1			cterm=bold gui=bold ctermfg=135 guifg=135
highlight markdownH2			cterm=bold gui=bold ctermfg=141 guifg=141
highlight markdownH3			cterm=bold gui=bold ctermfg=147 guifg=147
highlight markdownH4			cterm=bold gui=bold ctermfg=153 guifg=153
highlight markdownH1Delimiter	cterm=bold gui=bold ctermfg=135 guifg=135
highlight markdownH2Delimiter	cterm=bold gui=bold ctermfg=141 guifg=141
highlight markdownH3Delimiter	cterm=bold gui=bold ctermfg=147 guifg=147
highlight markdownH4Delimiter	cterm=bold gui=bold ctermfg=153 guifg=153

" " GitGutter plugin theme
" set updatetime=100
" let g:gitgutter_sign_added = '+'
" let g:gitgutter_sign_modified = '~'
" let g:gitgutter_sign_removed = '-'
" highlight GitGutterChange		guifg=#bbbb00 ctermfg=3
" highlight GitGutterAdd			guifg=#009900 ctermfg=2
" highlight GitGutterDelete		guifg=#ff2222 ctermfg=1
" highlight! link SignColumn LineNr

" " spell check styling
" highlight clear SpellBad
" highlight clear SpellCap
" highlight clear SpellRare
" highlight clear SpellLocal
" highlight SpellBad		cterm=underline gui=underline ctermfg=red guifg=red
" highlight SpellCap		cterm=underline gui=underline ctermfg=magenta guifg=magenta
" highlight SpellRare		cterm=underline gui=underline ctermfg=magenta guifg=magenta
" highlight SpellLocal	cterm=underline gui=underline ctermfg=yellow guifg=yellow

