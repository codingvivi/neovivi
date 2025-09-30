-- :fennel:1758733204
local function _1_(_, opts)
  local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
  parser_config.org = {install_info = {files = {"src/parser.c", "src/scanner.c"}, revision = "64cfbc213f5a83da17632c95382a5a0a2f3357c1", url = "https://github.com/milisims/tree-sitter-org"}, filetype = "org"}
  return require("nvim-treesitter.configs").setup(opts)
end
return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", main = "nvim-treesitter.configs", opts = {ensure_installed = {"bash", "c", "cmake", "cpp", "css", "csv", "fennel", "latex", "lua", "markdown", "mermaid", "org", "python", "racket", "rust", "toml", "sql", "tsv", "typst", "vimdoc", "xml", "yaml"}, highlight = {enable = true}}, config = _1_, lazy = false}