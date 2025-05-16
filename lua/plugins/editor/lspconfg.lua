-- :fennel:1746469532
local function _1_()
  local lspconfig = require("lspconfig")
  lspconfig.fennel_ls.setup({})
  lspconfig.lua_ls.setup({settings = {Lua = {diagnostics = {globals = {"vim"}}}}})
  return lspconfig.racket_langserver.setup({})
end
return {"neovim/nvim-lspconfig", config = _1_}