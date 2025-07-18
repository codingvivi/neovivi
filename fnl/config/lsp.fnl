(vim.diagnostic.config {:virtual_text true})  
(vim.lsp.config :sqls {})  
(vim.lsp.enable [:clangd
                 :jdtls
                 :racket_langserver
                 :basedpyright
                 :sqls
                 :lemminx
                 :tinymist])  
