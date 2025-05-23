{1 :nvim-treesitter/nvim-treesitter
          ; :event :BufReadPost 
          ; :dependencies [:nvim-treesitter/nvim-treesitter-textobjects]
          :build ":TSUpdate"
          :config (fn []
                    ((. (require :nvim-treesitter.configs) :setup) 
                     {:highlight {:enable true}} 
                     ;;{:indent {:enable true}}

                        ;:disable {:markdown}
                     :ensure_installed [
                      ;; langs
                                        :c
                                        :cpp
                                        :rust
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
                                        ;:org
                        ;;;; docs heavy
                                        :latex
                                        :typst
                        ;; misc
                                        :mermaid
                                        :vimdoc]))}
