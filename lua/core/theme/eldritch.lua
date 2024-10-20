local ok, _ = pcall(vim.cmd, 'colorscheme eldritch')
if not ok then 
  return 
end

