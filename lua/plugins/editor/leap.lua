-- :fennel:1747434497
local function _1_()
  return require("leap").create_default_mappings()
end
return {"ggandor/leap.nvim", config = _1_, lazy = false}