local function _1_()
  return require("divide").header()
end
local function _2_()
  return require("divide").subheader()
end
local function _3_()
  return require("divide").divider()
end
return {"brendon-felix/divide.nvim", event = "VeryLazy", keys = {{"<leader>cdh", _1_, desc = "Insert divide header #1"}, {"<leader>cds", _2_, desc = "Insert divide header #2"}, {"<leader>cdd", _3_, desc = "Insert divider"}}, opts = {width = 80, char = "~", default = {line_end = "/*", line_start = "/*"}, languages = {lua = {line_start = "--", line_end = "--"}, fennel = {line_start = ";", line_end = ";"}, c = {line_start = "/*", character = "~", line_end = "*/"}, cpp = {line_start = "/*", character = "~", line_end = "*/"}, rust = {line_start = "/*", character = "~", line_end = "*/"}, python = {line_start = "#", line_end = "#"}, typst = {line_start = "/*", line_end = "*/"}}}}