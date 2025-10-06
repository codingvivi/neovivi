local function _1_()
  vim.api.nvim_set_hl(0, "LspWarnModeline", {fg = "#f1c21b"})
  return vim.api.nvim_set_hl(0, "LspWarnModeline", {fg = "#fa4d56"})
end
return {"xiyaowong/transparent.nvim", enabled = true, opts = {groups = {"Normal", "NormalNC", "Comment", "Constant", "Special", "Identifier", "Statement", "PreProc", "Type", "Underlined", "Todo", "String", "Function", "Conditional", "Repeat", "Operator", "Structure", "LineNr", "NonText", "SignColumn", "CursorLine", "CursorLineNr", "StatusLine", "StatusLineNC", "EndOfBuffer", "FoldColumn"}}, config = _1_}