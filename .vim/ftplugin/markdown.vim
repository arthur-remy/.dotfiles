""" KEY MAPPINGS

" Insert link
inoremap <buffer> <C-L> [](<++>)<Esc>F[a
" Insert checkbox
inoremap <buffer> <C-Q> - [ ] 
noremap <buffer> <C-Q> I- [ ] 
" Toggle bold
nnoremap <buffer> <C-B> :call ToggleVimDecorator('n', '**', '\*\{2}')<CR>
vnoremap <buffer> <C-B> :call ToggleVimDecorator('v', '**', '\*\{2}')<CR>
" Toggle italic (Ctrl-I is not available in the terminal as it is interpreted as a tab)
nnoremap <buffer> <C-_> :call ToggleVimDecorator('n', '_', '_')<CR>
vnoremap <buffer> <C-_> :call ToggleVimDecorator('v', '_', '_')<CR>


""" CUSTOM COMMANDS AND FUNCTIONS

command CapitalizeMdHeaders execute '%g/^#/normal gUU' | normal `` | noh

function! ToggleVimDecorator(mode, decorator, matchString)
	if a:mode == "n"
		execute "normal viWv"
	endif
	let l:selectedWord = s:get_visual_selection()
	if (match(selectedWord, a:matchString) > -1)
		execute "'<,'>" .. 's/\%V' .. a:matchString .. '/'
		execute "normal &"
	else
		execute "normal gvc" .. a:decorator .. "\<C-r>\"" .. a:decorator
	endif
endfunction

function! s:get_visual_selection()
	let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction

