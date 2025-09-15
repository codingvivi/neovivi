{1 :nvim-treesitter/nvim-treesitter
 :lazy false
 ;:event :VeryLazy
 ;:cmd :FzfLua
 ; :dependencies [:nvim-treesitter/nvim-treesitter-textobjects]
 :build ":TSUpdate"
 :config (fn []
           ((. (require :nvim-treesitter.configs) :setup) {:highlight {:enable true}}
                                                          ;;{:indent {:enable true}}
                                                          ;:disable {:markdown}
                                                          :ensure_installed
                                                          [;; langs
                                                           :c
                                                           :cpp
                                                           :cmake
                                                           :rust
                                                           :ron
                                                           :java
                                                           :python
                                                           :lua
                                                           ;; lispin
                                                           :commonlisp
                                                           :fennel
                                                           :racket
                                                           ;; webshit
                                                           :css
                                                           :javascript
                                                           :typescript
                                                           ;; scriptin
                                                           :bash
                                                           ;;db 
                                                           :sql
                                                           ;; plaintext
                                                           ;;; markup
                                                           ;;;; misc
                                                           :xml
                                                           :toml
                                                           :yaml
                                                           :csv
                                                           :tsv
                                                           ;;;; docs light
                                                           :markdown
                                                           :org
                                                           ;;;; docs heavy
                                                           :latex
                                                           :typst
                                                           ;; misc
                                                           :mermaid
                                                           :vimdoc])
           (local parser-config
                  ((. (require :nvim-treesitter.parsers) :get_parser_configs)))
           (set parser-config.org
                {:install_info {:files [:src/parser.c :src/scanner.c]
                                ;:revision :64cfbc213f5a83da17632c95382a5a0a2f3357c1
                                :url "https://github.com/milisims/tree-sitter-org"}
                 :filetype :org}))}
