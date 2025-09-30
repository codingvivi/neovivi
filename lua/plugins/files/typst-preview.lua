-- :fennel:1758729277
local function _1_(path_of_buffer)
  return path_of_buffer
end
local function _2_(path_of_main_file)
  local root = os.getenv("TYPST_ROOT")
  if root then
    return root
  else
  end
  return vim.fn.fnamemodify(path_of_main_file, ":p:h")
end
return {"chomosuke/typst-preview.nvim", ft = "typst", version = "1.*", opts = {dependencies_bin = {tinymist = "tinymist"}, invert_colors = "never", get_main_file = _1_, get_root = _2_}}