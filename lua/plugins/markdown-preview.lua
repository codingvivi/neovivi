-- :fennel:1758729277
local function _1_()
  return vim.fn["mkdp#util#install"]
end
return {"iamcco/markdown-preview.nvim", cmd = {"MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"}, ft = {"markdown"}, build = _1_}