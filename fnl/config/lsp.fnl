(vim.diagnostic.config {:virtual_text true})  
(vim.lsp.enable [:clangd
                 :jdtls
                 :racket_langserver
                 :basedpyright
                 :lemminx
                 :tinymist])  
