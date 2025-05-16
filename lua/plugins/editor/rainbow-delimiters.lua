-- :fennel:1747434497
local function _1_()
  local rainbow_delimiters = require("rainbow-delimiters")
  vim.g.rainbow_delimiters = {highlight = {"RainbowDelimiterCyan", "RainbowDelimiterOrange", "RainbowDelimiterBlue", "RainbowDelimiterGreen", "RainbowDelimiterViolet", "RainbowDelimiterYellow", "RainbowDelimiterRed"}}
  vim.cmd("highlight rainbowdelimiterCyan  guifg=#3ddbd9 ctermfg=white")
  vim.cmd("highlight RainbowDelimiterOrange  guifg=#ee5396 ctermfg=White")
  vim.cmd("highlight RainbowDelimiterBlue  guifg=#33b1ff ctermfg=White")
  vim.cmd("highlight RainbowDelimiterGreen  guifg=#42be65 ctermfg=White")
  vim.cmd("highlight RainbowDelimiterViolet  guifg=#ffffff ctermfg=White")
  vim.cmd("highlight RainbowDelimiterRed  guifg=#491d8b ctermfg=White")
  return vim.cmd("highlight RainbowDelimiterYellow  guifg=#fa4d56 ctermfg=White")
end
return {"HiPhish/rainbow-delimiters.nvim", event = {"BufReadPre", "BufNewFile"}, config = _1_}