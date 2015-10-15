" AUTHOR: Syukur Bin Md Kassim
" EMAIL: syukirah@yahoo.co.uk
" DESCRIPTION: This is nothing... Just want make adding
" semicolon easier. Specify the range of line to add semicolon
"
" Usage: :AS <arg1> <arg2>
" arg1 - Start line number
" arg2 - End line number
"

command! -nargs=+ AS :call AddSemicolon(<f-args>)
function! AddSemicolon(start,end)
	let num = a:start
	while num <= a:end
		exec ':' num
		exec ':s/.*/&;/'
		let num = num + 1
	endwhile
endfunction
