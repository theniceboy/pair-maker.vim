" wip, lol
fun! s:MakePair()
	let line = getline('.')
	let len = strlen(line)
	if line[len - 1] == ";" || line[len - 1] == ","
		normal! lx$P
	else
		normal! lx$p
	endif
endfun

inoremap <c-u> <ESC>:call <SID>MakePair()<CR>
