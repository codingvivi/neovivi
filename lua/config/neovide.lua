-- :fennel:1757507984
if vim.g.neovide then
  vim.opt["guifont"] = "SF Mono"
  vim.g["neovide_scale_factor"] = 0.8
  vim.g["neovide_refresh_rate"] = 120
  vim.g["neovide_cursor_animation_length"] = 0.01
  vim.g["neovide_scroll_animation_length"] = 0.01
  return nil
else
  return nil
end