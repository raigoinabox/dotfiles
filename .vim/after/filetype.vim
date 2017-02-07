if exists("did_load_filetype")
	finish
endif

augroup filetypedetect
	au BufRead,BufNewFile *.otter		setfiletype otter
	au BufRead,BufNewFile SConstruct	setfiletype python
	au BufRead,BufNewFile *.tml		setfiletype html
augroup END
