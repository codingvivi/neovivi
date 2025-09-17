-- :fennel:1758105053
local function _1_(client, bufnr)
  local function _2_()
    local params = {arguments = {vim.uri_from_bufnr(bufnr)}, command = "basedpyright.organizeimports"}
    return client.request("workspace/executeCommand", params, nil, bufnr)
  end
  vim.api.nvim_buf_create_user_command(bufnr, "LspPyrightOrganizeImports", _2_, {desc = "Organize Imports"})
  return vim.api.nvim_buf_create_user_command(bufnr, "LspPyrightSetPythonPath", __fnl_global__set_2dpython_2dpath, {complete = "file", desc = "Reconfigure basedpyright with the provided python path", nargs = 1})
end
return {cmd = {"basedpyright-langserver", "--stdio"}, filetypes = {"python"}, on_attach = _1_, root_markers = {"pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git"}, settings = {basedpyright = {analysis = {autoSearchPaths = true, diagnosticMode = "openFilesOnly", useLibraryCodeForTypes = true}}}}