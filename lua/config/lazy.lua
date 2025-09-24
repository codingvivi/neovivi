-- :fennel:1758729277
do
  local lazypath = (vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({"git", "clone", "--filter=blob:none", "--single-branch", "https://github.com/folke/lazy.nvim.git", lazypath})
  else
  end
  vim.opt.runtimepath:prepend(lazypath)
end
local lazy = require("lazy")
return lazy.setup({"udayvir-singh/hibiscus.nvim", {import = "plugins"}})