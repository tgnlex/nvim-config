vim.cmd[[
  augroup _auto_resize 
	  autocmd! 
	  autocmd VimResized * tabdo wincmd = 
  augroup end
]]