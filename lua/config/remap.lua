local set = function(mode, map, cmd)
  return vim.keymap.set(mode, map, cmd);
end
vim.g.mapleader = " ";
-- Normal
set("n", "<leader>pv", vim.cmd.Ex) 
set("n", "<leader>pv", ":Ex<CR>")
set("n", "<leader>u", ":UndotreeShow<CR>")
set("n", "J", "mzJ`z")
-- Half page jump
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
-- V maps
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")
-- X maps 
set("x", "<leader>p", "\"_dP")