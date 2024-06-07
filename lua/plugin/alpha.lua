local status_ok, alpha = pcall(require, "alpha")
if not status_ok then 
  return 
end

local dash = require("alpha.themes.dashboard")
local btn = dash.button;
dash.section.buttons.val = {
  btn("f", "  Find file", ":Telescope find_files <CR>"),
  btn("e", "  New file", ":ene <BAR> startinsert <CR>"),
  btn("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  btn("t", "  Find text", ":Telescope live_grep <CR>"),
  btn("c", "  Configuration", ":e ~/.config/nvim/init.vim<CR>"),
  btn("w", "Work folder", ":e ~/desktop/work/ <CR>"), 
  btn("p", "Projects folder", ":e ~/desktop/work/projects <CR>"), 
  btn("k", "Kits folder", ":e ~/desktop/work/lib/ <CR>"),
  btn("w", "Web Kits folder", ":e ~/desktop/work/web-lib <CR>"),
  btn("q", "  Quit Neovim", ":qa<CR>"),
}

dash.opts.opts.noautocmd = true;
alpha.setup(dash.opts)