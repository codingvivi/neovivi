-- :fennel:1749555924
local function _1_()
  local conform = require("conform")
  conform.setup({formatters_by_ft = {c = {"clang_format"}, cpp = {"clang_format"}, css = {"prettierd"}, html = {"prettierd"}, lua = {"stylua"}, fennel = {"fnlfmt"}, markdown = {"prettierd"}, python = {"isort", "black"}, xml = {"xmlformatter"}}, formatters = {clang_format = {prepend_args = {"-style={BasedOnStyle: Google, BreakBeforeBraces: Allman}"}}, fnlfmt = {command = "fnlfmt"}}})
  local function _2_()
    return conform.format({lsp_fallback = true, timeout_ms = 500, async = false})
  end
  return vim.keymap.set({"n"}, "<leader>cf", _2_, {desc = "Format file or range (in visual mode)"})
end
return {"stevearc/conform.nvim", event = {"BufReadPre", "BufNewFile"}, config = _1_}