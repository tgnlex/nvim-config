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
end;
vim.opt.rtp:prepend(lazypath);

require("lazy").setup({
  -- Dependencies
  {'nvim-lua/plenary.nvim'},
  {'nvim-lua/popup.nvim'},
  {'nvim-tree/nvim-web-devicons'},
  {"JoosepAlviste/nvim-ts-context-commentstring"},
  {"moll/vim-bbye"},
   -- Basic 
  {"numToStr/Comment.nvim"},
  {"lewis6991/impatient.nvim"},
  {"ahmedkhalf/project.nvim"},
  { "antoinemadec/FixCursorHold.nvim"},
  {"lukas-reineke/indent-blankline.nvim"},
  -- ColorSchemes 
  {'catppuccin/nvim', name="catppuccin", priority=1000},
  -- CMP plugins 
  {"windwp/nvim-autopairs"},
  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-cmdline"},
  {"saadparwaiz1/cmp_luasnip"},
  {"hrsh7th/cmp-nvim-lsp"},
  -- Snippets
  {"L3MON4D3/LuaSnip"},
  {"rafamadriz/friendly-snippets"},
  {"folke/neoconf.nvim"},
        -- LSP CONFIG -- 
  {"neovim/nvim-lspconfig"},
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"tamago324/nlsp-settings.nvim"},
  {"williamboman/nvim-lsp-installer"},
  {'jose-elias-alvarez/null-ls.nvim'},
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
  -- NVIM TREE 
  {'kyazdani42/nvim-tree.lua'},
  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'},
  {'nvim-treesitter/playground'},
  {'JoosepAlviste/nvim-ts-context-commentstring'},
  -- GIT 
  {"lewis6991/gitsigns.nvim"},
  {"pluffie/neoproj",  cmd={ "ProjectOpen", "ProjectNew"}},

  {'goolord/alpha-nvim', lazy = true, dependencies = { 'nvim-tree/nvim-web-devicons' }},
  -- Bufferline
  {'akinsho/bufferline.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
  {'akinsho/toggleterm.nvim'},
  {"ThePrimeagen/harpoon", branch = "harpoon2", requires = { {"nvim-lua/plenary.nvim", 'nvim-telescope/telescope.nvim'}}},
  {"nvim-neotest/neotest", 
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter"
    },
  }


})
