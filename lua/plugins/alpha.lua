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
  btn("c", "  Configuration", ":e ~/.config/nvim/<CR>"),
  btn("w", 'Code folder', ':e /home/tgn/code/'),
  btn("q", "  Quit Neovim", ":qa<CR>"),
}

dash.opts.opts.noautocmd = true;
alpha.setup(dash.opts) 
