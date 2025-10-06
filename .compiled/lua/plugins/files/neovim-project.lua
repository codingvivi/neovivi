local function _1_()
  return vim.opt.sessionoptions:append("globals")
end
return {"coffebar/neovim-project", dependencies = {{"nvim-lua/plenary.nvim"}, {"ibhagwan/fzf-lua"}, {"folke/snacks.nvim", opts = {}}, {"Shatur/neovim-session-manager"}}, init = _1_, opts = {picker = {type = "fzf-lua"}, projects = {"~/.config/nvim/", "~/Development/Projects/*/*"}, last_session_on_startup = false}, priority = 100, lazy = false}