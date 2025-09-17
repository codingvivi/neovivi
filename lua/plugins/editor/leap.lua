-- :fennel:1758096402
local function _1_()
  local leap = require("leap")
  local function _2_()
    return leap.leap()
  end
  return vim.keymap.set({"n"}, "gj", _2_, {desc = "Leap forward", silent = true})
end
return {"ggandor/leap.nvim", event = "VeryLazy", config = _1_, enabled = false, lazy = false}