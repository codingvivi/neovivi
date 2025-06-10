-- :fennel:1749561104
local function _1_()
  return require("nvim-treesitter.configs").setup({highlight = {enable = true}}, "ensure_installed", {"c", "cpp", "rust", "java", "python", "lua", "commonlisp", "fennel", "racket", "css", "javascript", "typescript", "bash", "xml", "toml", "yaml", "csv", "tsv", "markdown", "org", "latex", "typst", "mermaid", "vimdoc"})
end
return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = _1_, lazy = false}