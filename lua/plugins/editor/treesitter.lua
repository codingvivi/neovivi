-- :fennel:1747434497
local function _1_()
  return require("nvim-treesitter.configs").setup({highlight = {enable = true}}, "ensure_installed", {"c", "cpp", "rust", "java", "python", "lua", "racket", "fennel", "css", "javascript", "typescript", "bash", "xml", "toml", "yaml", "csv", "tsv", "markdown", "latex", "typst", "mermaid", "vimdoc"})
end
return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = _1_}