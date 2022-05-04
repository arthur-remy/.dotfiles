fun g:TabIndent(direction)
	" Works with dash and star bullets, numbers (1.) and lower-case letters (a.)
	let l:currentLine = getline('.')
	echo l:currentLine
	let l:regexp = '^\s*\(\*\|\-\|\d\+\.\|\a\+\.\)'
	if match(l:currentLine, l:regexp) > -1
		if (a:direction == 1) | BulletDemote
			else | BulletPromote
		endif
		startinsert
	else
		call feedkeys("\<Tab>", "n")
	endif
endfun

