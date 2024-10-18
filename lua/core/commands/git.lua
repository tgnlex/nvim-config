vim.cmd[[
  augroup _git
    autocmd! 
    autocmd FileType gitcommit setlocal wrap 
    autocmd FileType gitcommit setlocal spell
  augroup end
]]