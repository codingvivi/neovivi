-- :fennel:1757588741
local function _1_()
  local conform = require("conform")
  conform.setup({formatters_by_ft = {c = {"c_formatter_42"}, cpp = {"clang_format"}, cmake = {"gersemi"}, css = {"prettierd"}, html = {"prettierd"}, lua = {"stylua"}, fennel = {"fnlfmt"}, markdown = {"prettierd"}, yaml = {"yamlfmt"}, python = {"isort", "black"}}, formatters = {clang_format = {prepend_args = {"-style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman}"}}, fnlfmt = {command = "fnlfmt"}, yamlfmt = {prepend_args = {"-formatter", "scan_folded_as_literal=true"}}, c_formatter_42 = {command = "c_formatter_42"}}, format_on_save = {lsp_format = "fallback", timeout_ms = 500}})
  local function _2_()
    return conform.format({lsp_fallback = true, timeout_ms = 500, async = false})
  end
  return vim.keymap.set({"n"}, "<leader>cf", _2_, {desc = "Format file or range (in visual mode)"})
end
return {"stevearc/conform.nvim", event = {"BufReadPre", "BufNewFile"}, config = _1_}