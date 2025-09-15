-- :fennel:1754508037
vim.opt_local["makeprg"] = "typst compile main.typ VDJ-XoneViv2-Manual.pdf"
local function get_makeprg()
  local current_file_directory = vim.fn.expand("%:p:h")
  local makefile_path = (current_file_directory .. "/Makefile")
  if (1 == vim.fn.filereadable(makefile_path)) then
    return vim.notify("Makefile found in filepath!")
  else
    return vim.notify("No makefile found in filepath!")
  end
end
return get_makeprg