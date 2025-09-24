{1 :nvim-treesitter/nvim-treesitter
 :lazy false
 ;:event :VeryLazy
 ;:dependencies [:nvim-treesitter/nvim-treesitter-textobjects]
 :build ":TSUpdate"
 :main :nvim-treesitter.configs
 :opts {:ensure_installed [:bash
                           :c
                           :cmake
                           :cpp
                           :css
                           :csv
                           :fennel
                           :latex
                           :lua
                           :markdown
                           :mermaid
                           :org
                           :python
                           :racket
                           :rust
                           :toml
                           :sql
                           :tsv
                           :typst
                           :vimdoc
                           :xml
                           :yaml]
        :highlight {:enable true}}
 :config (fn [_ opts]
           (local parser-config
                  ((. (require :nvim-treesitter.parsers) :get_parser_configs)))
           (set parser-config.org
                {:install_info {:files [:src/parser.c :src/scanner.c]
                                :revision :64cfbc213f5a83da17632c95382a5a0a2f3357c1
                                :url "https://github.com/milisims/tree-sitter-org"}
                 :filetype :org})
           ((. (require :nvim-treesitter.configs) :setup) opts))}
