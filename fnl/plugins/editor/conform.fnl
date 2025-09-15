;; always prepend args (to default configs?) for them to work
{1 :stevearc/conform.nvim
 :event [:BufReadPre :BufNewFile]
 :config (fn []
           (local conform (require :conform))
           (conform.setup {:formatters_by_ft {:c [:c_formatter_42]
                                              :cpp [:clang_format]
                                              :cmake [:gersemi]
                                              :css [:prettierd]
                                              :html [:prettierd]
                                              :lua [:stylua]
                                              :fennel [:fnlfmt]
                                              :markdown [:prettierd]
                                              :yaml [:yamlfmt]
                                              :python [:isort :black]}
                           :formatters {:clang_format {:prepend_args ["-style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman}"]}
                                        :fnlfmt {:command :fnlfmt}
                                        :yamlfmt {:prepend_args [:-formatter
                                                                 :scan_folded_as_literal=true]}
                                        :c_formatter_42 {:command :c_formatter_42}}
                           :format_on_save {:lsp_format :fallback
                                            :timeout_ms 500}})
           (vim.keymap.set [:n] :<leader>cf
                           (fn []
                             (conform.format {:async false
                                              :lsp_fallback true
                                              :timeout_ms 500}))
                           {:desc "Format file or range (in visual mode)"}))}
