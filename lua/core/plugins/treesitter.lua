require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "javascript", 
    "typescript", 
    "lua", 
    "c",
    "rust",
    "python"
  },
  sync_install = false, 
  auto_install = true, 
  ignore_install = {},
  autopairs = { enable = true, },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {enable = true, disable = { 
    "yaml", 
		"html", 
		"xml",
		"hbs",
		"pug",
		"ejs", 
		"tmpl",
		"templ",
    "json",
		"css", 
    "scss",
		"sass",
		"less",
		"stylus",
		"jsx", 
		"tsx"

}},
	
}
