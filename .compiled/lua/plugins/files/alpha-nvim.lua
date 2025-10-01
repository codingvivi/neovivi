local function _1_()
  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")
  dashboard.section.buttons.val = {dashboard.button("SPC f f", "\239\128\130  Find File  ", ":Telescope find_files<CR>"), dashboard.button("SPC f o", "\239\156\153  Recent File  ", ":Telescope oldfiles<CR>"), dashboard.button("SPC f w", "\239\156\172  Find Word  ", ":Telescope live_grep theme=ivy<CR>"), dashboard.button("SPC f b", "\239\128\174  Bookmarks  ", ":Telescope marks theme=ivy<CR>"), dashboard.button("SPC f t", "\238\136\171  Themes  ", ":Telescope colorscheme enable_preview=false<CR>"), dashboard.button("SPC f s", "\238\152\149  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"), dashboard.button("SPC c i", "\239\135\188  Change header image", ":AlphaAsciiNext<CR>")}
  local function _2_()
    local stats = require("lazy").stats()
    local ms = (math.floor(((stats.startuptime * 100) + 0.5)) / 100)
    dashboard.section.footer.val = {" ", ("\239\131\167 Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins \239\135\166 in " .. ms .. " ms ")}
    return pcall(vim.cmd.AlphaRedraw)
  end
  vim.api.nvim_create_autocmd("User", {callback = _2_, once = true, pattern = "LazyVimStarted"})
  return alpha.setup(dashboard.opts)
end
return {"goolord/alpha-nvim", dependencies = {"nhattVim/alpha-ascii.nvim", opts = {header = "random"}}, event = "VimEnter", config = _1_}