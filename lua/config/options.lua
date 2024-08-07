vim.opt.cmdheight = 3;  -- command line size
vim.opt.completeopt = {"menuone", "noselect"} -- for cmp
vim.opt.conceallevel = 0;  --visibility
vim.opt.fileencoding = "utf-8" --default file encoding
vim.opt.hlsearch = true;  -- Search highlighting
vim.opt.number = true; -- line numbers
vim.opt.showtabline = 2 -- always show tabs
vim.opt.pumheight = 12; -- popup menu size
vim.opt.mouse = 'a'; -- mouse mode
vim.opt.showmode = true; -- show mode in status line
vim.opt.clipboard = 'unnamedplus'; -- clipboard access
vim.opt.breakindent = true;
vim.opt.relativenumber = false; -- relative line numbers
vim.opt.expandtab = true; -- convert tabs to spaces
vim.opt.cursorline = true; -- highlight current line
vim.opt.undofile = true;  -- persistent undo
vim.opt.ignorecase = true; -- ignore case in search patterns 
vim.opt.smartcase = true; -- smart casing
vim.opt.signcolumn = 'yes';  -- always show sign column
vim.opt.updatetime = 250; -- faster completion [Default = 4000]
vim.opt.timeoutlen = 1000; -- time to wait for mapped sequence
vim.opt.splitright = true; -- force vertical splits to the right
vim.opt.splitbelow = true; -- force horizontal splits to go below
vim.opt.list = true;
vim.opt.guifont = "monospace:h17" -- font used in graphical nvim apps
vim.opt.wrap = false; -- display lines as one long line 
vim.opt.scrolloff = 8;
vim.opt.sidescrolloff = 8;
vim.opt.shortmess:append "c";
vim.opt.tabstop = 2; -- Insert 2 spaces for tab.
vim.opt.softtabstop = 2;
vim.opt.numberwidth = 3; -- number column width
