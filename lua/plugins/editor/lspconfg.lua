-- :fennel:1749564164
local function _1_()
  local lspconfig = require("lspconfig")
  lspconfig.fennel_ls.setup({libraries = {nvim = true}})
  lspconfig.lua_ls.setup({settings = {Lua = {diagnostics = {globals = {"vim"}}}}})
  return lspconfig.racket_langserver.setup({})
end
return {"neovim/nvim-lspconfig", event = "VeryLazy", config = _1_}