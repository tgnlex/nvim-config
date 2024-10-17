-- Core -config
require ("config.options")
require ("config.remap")
require ("config.plugins")
require ("config.neoconf")
-- Theme --
require ("config.themes.catpuccin")
-- Language Server Protocol 
require("config.lsp")
-- Plugins 
require ("plugins.cmp")
require ("plugins.telescope")
require ("plugins.lualine")
require ("plugins.bufferline")
require ("plugins.autopairs")
require ("plugins.treesitter")
require ("plugins.alpha")
require ("plugins.nvimtree")
require ("plugins.toggleterm")
require ("plugins.harpoon")
require ("plugins.comment")
require ("plugins.gitsigns")
require ("plugins.impatient")
require ("plugins.indentline")
require ("plugins.project")
require ("plugins.whichkey")
require ("plugins.neotest")

require("plugins.oil")
require("plugins.dap")
require("plugins.vim-test")
-- Language tools --
require("tools.rust")
-- Auto Commands --
require("autocmd.save-session")
-- Scripts --
require ("scripts.commands")
require ("scripts.markdown")

