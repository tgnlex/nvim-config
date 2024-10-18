local status, neoconf = pcall(require, "neoconf")
if not status then
  print("Something went wrong while loading neoconf.", neoconf)
  return
end

neoconf.setup({
  import = {
    vscode = true,
    coc = true,
    nlsp = true,
  },
  live_reload = true,
  filetype_jsonc = true,
  plugins = {
    lspconfig = {
      enabled = true,
    },
    jsonls = {
      enabled = true, 
      configured_servers_only = true,
    },
    lua_ls = {
      enabled_for_neovim_config = true,
      enabled = false,
    }
  }
})



