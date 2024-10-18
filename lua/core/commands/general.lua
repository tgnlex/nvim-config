vim.cmd [[
  augroup _general
	  autocmd!
	  autocmd FileType qf, help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
	  autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
	  autocmd BufWinEnter * :set formatoptions-=cro
	  autocmd FileType qf set nobuflisted
	augroup end 



]]
