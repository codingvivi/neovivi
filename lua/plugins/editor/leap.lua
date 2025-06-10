-- :fennel:1749555954
local function _1_()
  return require("leap").create_default_mappings()
end
return {"ggandor/leap.nvim", config = _1_, lazy = false}