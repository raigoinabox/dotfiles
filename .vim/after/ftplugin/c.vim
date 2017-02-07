runtime! ftplugin/man.vim

setlocal softtabstop=4
setlocal shiftwidth=4
setlocal foldmethod=syntax

au BufWrite <buffer> :Autoformat
