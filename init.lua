local function get_config_path()
  local pvim_path = os.getenv("PVIM")
  if pvim_path then
    return (pvim_path .. "/../config")
  else
    return vim.fn.stdpath("config")
  end
end
local function get_data_path()
  local pvim_path = os.getenv("PVIM")
  if pvim_path then
    return (pvim_path .. "/../data")
  else
    return vim.fn.stdpath("data")
  end
end
local function ensure_installed(plugin, branch)
  local user, repo = string.match(plugin, "(.+)/(.+)")
  local repo_path = (get_data_path() .. "/lazy/" .. repo)
  if not (vim.uv or vim.loop).fs_stat(repo_path) then
    vim.notify(("Installing " .. plugin .. " " .. branch))
    local repo_url = ("https://github.com/" .. plugin .. ".git")
    local out = vim.fn.system({"git", "clone", "--filter=blob:none", ("--branch=" .. branch), repo_url, repo_path})
    if (vim.v.shell_error ~= 0) then
      vim.api.nvim_echo({{("Failed to clone " .. plugin .. ":\n"), "ErrorMsg"}, {out, "WarningMsg"}, {"\nPress any key to exit..."}}, true, {})
      vim.fn.getchar()
      os.exit(1)
    else
    end
  else
  end
  return repo_path
end
local lazy_path = ensure_installed("folke/lazy.nvim", "stable")
local hotpot_path = ensure_installed("rktjmp/hotpot.nvim", "v0.14.8")
vim.opt.runtimepath:prepend({hotpot_path, lazy_path})
vim.loader.enable()
vim.opt.runtimepath:append("~/.local/share/nvim/lazy/hibiscus.nvim/fnl/")
do
  local hotpot = require("hotpot")
  local setup = hotpot.setup
  local build = hotpot.api.make.build
  local uv = vim.loop
  setup({compiler = {modules = {correlate = true}, macros = {env = "_COMPILER", compilerEnv = _G, allowedGlobals = false}}})
  local function rebuild_on_save(_5_)
    local buf = _5_["buf"]
    local _let_6_ = require("hotpot.api.make")
    local build0 = _let_6_["build"]
    local au_config
    local function _7_()
      local _8_
      do
        local tbl_21_ = {}
        local i_22_ = 0
        for n, _ in pairs(_G) do
          local val_23_ = n
          if (nil ~= val_23_) then
            i_22_ = (i_22_ + 1)
            tbl_21_[i_22_] = val_23_
          else
          end
        end
        _8_ = tbl_21_
      end
      return build0(get_config_path(), {verbose = true, atomic = true, compiler = {modules = {allowedGlobals = _8_}}}, {{"init.fnl", true}})
    end
    au_config = {buffer = buf, callback = _7_}
    return vim.api.nvim_create_autocmd("BufWritePost", au_config)
  end
  vim.api.nvim_create_autocmd("BufRead", {pattern = vim.fs.normalize((get_config_path() .. "/init.fnl")), callback = rebuild_on_save})
end
vim.g.mapleader = " "
vim.g.maplocalleader = " m"
require("lazy").setup({performance = {rtp = {paths = {(get_config_path() .. "/.compiled")}}}, spec = {{"rktjmp/hotpot.nvim", opts = {compiler = {macros = {allowedGlobals = {"vim"}}}, enable_hotpot_diagnostics = false}}, {import = "plugins"}}})
require("plugins.files.nyoom-modeline")
require("config.keymaps")
require("config.options")
require("config.lsp")
if vim.g.neovide then
  return require("config.neovide")
else
  return nil
end