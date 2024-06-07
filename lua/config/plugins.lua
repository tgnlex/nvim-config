local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not(vim.uv or vim.loop).fs_stat(lazypath) then 
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Dependencies
  {'nvim-lua/plenary.nvim'},
  {'nvim-tree/nvim-web-devicons'},
  -- Which Key
  {"folke/which-key.nvim", lazy=true},
  -- NeoDev
  {"folke/neodev.nvim"},
   -- Hop (navigation)
   {'phaazon/hop.nvim', lazy=true},
   -- Nvim Tree (file explorer)
   {'nvim-tree/nvim-tree.lua', lazy=true, dependencies = {'nvim-tree/nvim-web-devicons'}},
  -- Telescope (fuzzy finder)
  {"nvim-telescope/telescope.nvim", lazy=true, dependencies = { {'nvim-lua/plenary.nvim'} }},
  -- Rose Pine (colors)
  {'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end},
  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'},
  {'nvim-treesitter/playground'},
  -- Dashboard
  {'goolord/alpha-nvim', lazy = true, dependencies = { 'nvim-tree/nvim-web-devicons' }};
  -- Bufferline
  {'akinsho/bufferline.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
})
