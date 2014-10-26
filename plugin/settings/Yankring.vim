nnoremap <silent> <F11> :YRShow<CR>
if has('win32') || has('win64')
	let g:yankring_history_dir='$VIM/.vim/tmp'
else
	let g:yankring_history_dir='~/.vim/tmp'
endif
