augroup custom_file_config
	autocmd!
	autocmd BufReadPost daily_notes.md execute "/---------" | noh | normal 2k 
	autocmd BufReadPost journal.md normal G
augroup end

