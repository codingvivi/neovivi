-- :fennel:1749756193
local function _1_()
  require("nvim-treesitter.configs").setup({highlight = {enable = true}}, "ensure_installed", {"c", "cpp", "rust", "java", "python", "lua", "commonlisp", "fennel", "racket", "css", "javascript", "typescript", "bash", "xml", "toml", "yaml", "csv", "tsv", "markdown", "org", "latex", "typst", "mermaid", "vimdoc"})
  local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
  parser_config.org = {install_info = {files = {"src/parser.c", "src/scanner.c"}, url = "https://github.com/milisims/tree-sitter-org"}, filetype = "org"}
  return nil
end
return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = _1_, lazy = false}