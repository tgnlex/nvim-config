-- Core -config
require ("config.options")
require ("config.remap")
require ("config.plugins")
require ("config.cmp")
require ("config.theme")
-- LSP CONFIG
require("plugins.neoconf")
require("lsp")
-- Plugins 

require ("plugins.telescope")
require ("plugins.bufferline")
require ("plugins.autopairs")
require ("plugins.treesitter")
require ("plugins.alpha")
require ("plugins.nvimtree")
require ("plugins.toggleterm")
require ("plugins.harpoon")
require ("plugins.comment")
require ("plugins.gitsigns")

require {"macros.save_session"
