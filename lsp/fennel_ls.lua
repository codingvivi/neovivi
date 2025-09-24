-- :fennel:1758729277
local function _1_(bufnr, on_dir)
  local fname = vim.api.nvim_buf_get_name(bufnr)
  local function has_fls_project_cfg(path)
    local fnlpath = vim.fs.joinpath(path, "flsproject.fnl")
    return ((vim.uv.fs_stat(fnlpath) or {}).type == "file")
  end
  return on_dir((vim.iter(vim.fs.parents(fname)):find(has_fls_project_cfg) or vim.fs.root(0, ".git")))
end
return {capabilities = {offsetEncoding = {"utf-8", "utf-16"}}, cmd = {"fennel-ls"}, filetypes = {"fennel"}, root_dir = _1_, libraries = {nvim = true}}