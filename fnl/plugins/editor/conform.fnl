{1 :stevearc/conform.nvim
 :config (fn []
           (local conform (require :conform))
           (conform.setup {:formatters_by_ft {:c [:clang_format] 
                                              :cpp [:clang_format]
                                              :css [:prettierd]
                                              :html [:prettierd]
                                              :lua [:stylua]
                                              :markdown [:prettierd]
                                              :python [:isort :black]
                                              ;:typst [:prettypst]
                                              :xml [:xmlformatter]}
                           :formatters {:clang_format {:prepend_args ["-style={BasedOnStyle: Google, BreakBeforeBraces: Allman}"]}}})
           (vim.keymap.set [:n] :<leader>cf
                           (fn []
                             (conform.format {:async false
                                              :lsp_fallback true
                                              :timeout_ms 500}))
                           {:desc "Format file or range (in visual mode)"}))
 :event [:BufReadPre :BufNewFile]}
