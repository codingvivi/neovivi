local function _1_()
  local alpha = require("alpha")
  local function button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")
    local opts = {position = "center", shortcut = sc, cursor = 5, width = 50, align_shortcut = "right", hl = "Special", hl_shortcut = "Comment"}
    if keybind then
      opts.keymap = {"n", sc_, keybind, {noremap = true, silent = true, nowait = true}}
    else
    end
    local function on_press()
      local key = vim.api.nvim_replace_termcodes((keybind or (sc_ .. "<Ignore>")), true, false, true)
      return vim.api.nvim_feedkeys(key, "t", false)
    end
    return {type = "button", val = txt, on_press = on_press, opts = opts}
  end
  local footer_section = {type = "text", val = "Loading startup time...", opts = {position = "center", hl = "Comment"}}
  local alpha_config = {layout = {{type = "text", val = require("plugins.files.bonsaiescaped"), opts = {position = "center", hl = "Comment"}}, {type = "padding", val = 1}, {type = "text", val = "neovivi!", opts = {position = "center", hl = "Comment"}}, {type = "padding", val = 2}, {type = "group", val = {button("SPC f r", "\239\144\142  Recently opened files"), button("SPC p l", "\239\145\164  Reload last project"), button("SPC p p", "\239\146\145  Open project"), button("SPC o a", "\239\145\149  Open agenda"), button("SPC RET", "\239\145\161  Jump to bookmark"), button("SPC f p", "\239\144\165  Open private configuration"), button("SPC s h", "\239\144\133  Search help")}, opts = {spacing = 1}}, {type = "padding", val = 2}, footer_section}}
  local function _3_()
    local stats = require("lazy").stats()
    local time_ms = stats.startuptime
    local text = ""
    if (time_ms >= 1000) then
      text = string.format("Loaded %d/%d plugins in %.2fs", stats.loaded, stats.count, (time_ms / 1000))
    else
      text = string.format("Loaded %d/%d plugins in %dms", stats.loaded, stats.count, time_ms)
    end
    footer_section.val = text
    return pcall(vim.cmd.AlphaRedraw)
  end
  vim.api.nvim_create_autocmd("User", {pattern = "LazyVimStarted", once = true, callback = _3_})
  return alpha.setup(alpha_config)
end
return {"goolord/alpha-nvim", dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_}